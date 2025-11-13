.class public abstract Landroidx/activity/result/contract/ActivityResultContract;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createIntent(Ljava/lang/Object;)Landroid/content/Intent;
.end method

.method public getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
.end method
