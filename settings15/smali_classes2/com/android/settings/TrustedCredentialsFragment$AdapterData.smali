.class public final Lcom/android/settings/TrustedCredentialsFragment$AdapterData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

.field public final mCertHoldersByUserId:Landroid/util/SparseArray;

.field public final mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field public final synthetic this$0:Lcom/android/settings/TrustedCredentialsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-void
.end method
