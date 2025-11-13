.class Lcom/android/internal/app/HsvGainController$1;
.super Landroid/database/ContentObserver;
.source "HsvGainController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/HsvGainController;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/HsvGainController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/HsvGainController;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/HsvGainController$1;->this$0:Lcom/android/internal/app/HsvGainController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/HsvGainController$1;->this$0:Lcom/android/internal/app/HsvGainController;

    invoke-static {v1, v0}, Lcom/android/internal/app/HsvGainController;->-$$Nest$monSettingChanged(Lcom/android/internal/app/HsvGainController;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
