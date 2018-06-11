/// @description

dtPrevious = dt;

// Store previous internal delta time
dtPrevious = dt;
// Update internal delta time
dt = delta_time/1000000;

// Prevent delta time from exhibiting sporadic behaviour
if (dt > 1/minFPS)
{
    if (dtRestored) 
    { 
        dt = 1/minFPS; 
    } 
    else 
    { 
        dt = dtPrevious;
        dtRestored = true;
    }
}
else
{
    dtRestored = false;
}

delta = dt*TimeScale;
