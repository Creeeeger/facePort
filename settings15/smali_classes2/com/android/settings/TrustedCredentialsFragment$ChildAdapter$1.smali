.class public final Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter$1;
.super Landroid/database/DataSetObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$1:Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter$1;->this$1:Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter$1;->this$1:Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->access$001(Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;)V

    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter$1;->this$1:Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->access$101(Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;)V

    return-void
.end method
