import LoggerAPI
import Health
import KituraContracts

func initializeHealthRoutes(app: App) {
    //RESTFUL API DESIGN
    app.router.get("/health") { (respondWith: (Status?, RequestError?) -> Void) -> Void in
        if health.status.state == .UP {
            respondWith(health.status, nil)
        } else {
            respondWith(nil, RequestError(.serviceUnavailable, body: health.status))
        }
    }

    app.router.get("/demo") { request, response, next in
    response.send("Hello from the 1st route!")
    next()
    }

    app.router.get("/demo") { request, response, next in
    response.send("Hello from the 2nd route!")
    next()
    }

    
}
