.class public final synthetic Landroid/app/appfunctions/AppFunctionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/appfunctions/AppFunctionService$OnExecuteFunction;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/appfunctions/AppFunctionService;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/appfunctions/AppFunctionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionService$$ExternalSyntheticLambda0;->f$0:Landroid/app/appfunctions/AppFunctionService;

    return-void
.end method


# virtual methods
.method public final blacklist perform(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .locals 1

    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionService$$ExternalSyntheticLambda0;->f$0:Landroid/app/appfunctions/AppFunctionService;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/appfunctions/AppFunctionService;->onExecuteFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/lang/String;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V

    return-void
.end method
