.class public final synthetic Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mIsKeyguardLoading:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mIsKeyguardLoading:Z

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mAuthErrorListener:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    const/16 v1, 0x9b

    invoke-static {v1, p1, v0, p0}, Lcom/android/settings/wifi/WifiUtils;->authenticateUser(ILjava/lang/Runnable;Lcom/samsung/android/settings/wifi/details/WifiDppAuthenticationErrorListener;Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method
