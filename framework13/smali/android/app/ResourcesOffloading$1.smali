.class Landroid/app/ResourcesOffloading$1;
.super Ljava/lang/Object;
.source "ResourcesOffloading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ResourcesOffloading;->resourcesOffloading(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ResourcesOffloading;


# direct methods
.method constructor blacklist <init>(Landroid/app/ResourcesOffloading;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ResourcesOffloading;

    .line 62
    iput-object p1, p0, Landroid/app/ResourcesOffloading$1;->this$0:Landroid/app/ResourcesOffloading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 65
    iget-object v0, p0, Landroid/app/ResourcesOffloading$1;->this$0:Landroid/app/ResourcesOffloading;

    invoke-static {v0}, Landroid/app/ResourcesOffloading;->-$$Nest$fgetappContext(Landroid/app/ResourcesOffloading;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/Resources;->setIfAppLaunching(Z)V

    .line 66
    return-void
.end method
