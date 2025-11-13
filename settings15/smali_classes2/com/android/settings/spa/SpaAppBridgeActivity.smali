.class public final Lcom/android/settings/spa/SpaAppBridgeActivity;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/android/settings/spa/SpaAppBridgeActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/settings/spa/SpaAppBridgeActivity$onCreate$1;

    invoke-direct {p1, p0}, Lcom/android/settings/spa/SpaAppBridgeActivity$onCreate$1;-><init>(Lcom/android/settings/spa/SpaAppBridgeActivity;)V

    invoke-static {p0, p1}, Lcom/android/settings/spa/SpaBridgeActivity$Companion;->startSpaActivityFromBridge(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
