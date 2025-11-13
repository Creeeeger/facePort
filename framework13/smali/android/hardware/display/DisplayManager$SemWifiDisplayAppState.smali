.class public final enum Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;
.super Ljava/lang/Enum;
.source "DisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SemWifiDisplayAppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

.field public static final enum whitelist PAUSE:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

.field public static final enum whitelist RESUME:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

.field public static final enum whitelist SETUP:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

.field public static final enum whitelist TEARDOWN:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 2837
    new-instance v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    const-string v1, "SETUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->SETUP:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    .line 2841
    new-instance v1, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    const-string v3, "PAUSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->PAUSE:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    .line 2845
    new-instance v3, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    const-string v5, "RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->RESUME:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    .line 2849
    new-instance v5, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    const-string v7, "TEARDOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    .line 2833
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->$VALUES:[Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2833
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2833
    const-class v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    return-object v0
.end method

.method public static whitelist values()[Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;
    .locals 1

    .line 2833
    sget-object v0, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->$VALUES:[Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v0}, [Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    return-object v0
.end method
