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
    accessFlags = 0x9
    name = "LiveIconObject"
.end annotation


# instance fields
.field private blacklist liveIcon:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

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

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationPackageManager$LiveIconObject;

    return-object v0
.end method

.method public blacklist getLiveIcon()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/app/ApplicationPackageManager$LiveIconObject;->liveIcon:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist setLiveIcon(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ApplicationPackageManager$LiveIconObject;->liveIcon:Ljava/lang/Object;

    return-void
.end method
