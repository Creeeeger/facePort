.class public final Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;

    sget-object p1, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->SETTINGS_URIS:[Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->updateSwitchAndPreferenceState$1()V

    return-void
.end method
