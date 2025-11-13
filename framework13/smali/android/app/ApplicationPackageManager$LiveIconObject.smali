.class public Landroid/app/ApplicationPackageManager$LiveIconObject;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveIconObject"
.end annotation


# instance fields
.field private blacklist liveIcon:Ljava/lang/Object;

.field final synthetic blacklist this$0:Landroid/app/ApplicationPackageManager;


# direct methods
.method public constructor blacklist <init>(Landroid/app/ApplicationPackageManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ApplicationPackageManager;

    .line 4710
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$LiveIconObject;->this$0:Landroid/app/ApplicationPackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4721
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationPackageManager$LiveIconObject;

    .line 4722
    .local v0, "clone":Landroid/app/ApplicationPackageManager$LiveIconObject;
    return-object v0
.end method

.method public blacklist getLiveIcon()Ljava/lang/Object;
    .locals 1

    .line 4714
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$LiveIconObject;->liveIcon:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist setLiveIcon(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 4718
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$LiveIconObject;->liveIcon:Ljava/lang/Object;

    .line 4719
    return-void
.end method
