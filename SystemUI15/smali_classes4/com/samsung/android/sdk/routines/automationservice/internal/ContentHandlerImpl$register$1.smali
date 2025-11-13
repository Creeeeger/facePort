.class public final Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl$register$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $observer:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ChangeObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/routines/automationservice/interfaces/ChangeObserver;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl$register$1;->$observer:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ChangeObserver;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    sget-object p1, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChange: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "ContentHandlerImpl"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl$register$1;->$observer:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ChangeObserver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method
