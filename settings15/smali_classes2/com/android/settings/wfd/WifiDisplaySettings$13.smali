.class public final Lcom/android/settings/wfd/WifiDisplaySettings$13;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->update(I)V

    return-void
.end method
