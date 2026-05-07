<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Models\Tenant;
use Spatie\Multitenancy\Models\Tenant as SpatieTenant;

class InitializeTenant
{
    public function handle(Request $request, Closure $next)
    {
        $host = $request->getHost();

        $tenant = Tenant::where('domain', $host)->first();

        if ($tenant) {
            $tenant->makeCurrent(); // 🔥 esto hace el switch
        }

        return $next($request);
    }
}