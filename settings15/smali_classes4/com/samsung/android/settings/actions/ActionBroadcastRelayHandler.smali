.class public final Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sInstance:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;


# instance fields
.field public mHandler:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$2;

.field public final mRelays:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mHandler:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$2;

    return-void
.end method
