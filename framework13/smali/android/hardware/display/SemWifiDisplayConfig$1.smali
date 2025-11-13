.class Landroid/hardware/display/SemWifiDisplayConfig$1;
.super Ljava/util/HashMap;
.source "SemWifiDisplayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/SemWifiDisplayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Landroid/hardware/display/SemWifiDisplayParameter;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/display/SemWifiDisplayConfig;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/display/SemWifiDisplayConfig;)V
    .locals 2
    .param p1, "this$0"    # Landroid/hardware/display/SemWifiDisplayConfig;

    .line 94
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayConfig$1;->this$0:Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "initparams"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/display/SemWifiDisplayConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "getparams"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/display/SemWifiDisplayConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "setparams"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/display/SemWifiDisplayConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method
