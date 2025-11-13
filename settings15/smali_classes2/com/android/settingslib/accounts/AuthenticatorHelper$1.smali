.class public final Lcom/android/settingslib/accounts/AuthenticatorHelper$1;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/accounts/AuthenticatorHelper;

.field public final synthetic val$accountType:Ljava/lang/String;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;->this$0:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iput-object p2, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;->val$accountType:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;->this$0:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;->val$accountType:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    const/4 p0, 0x0

    return-object p0
.end method
