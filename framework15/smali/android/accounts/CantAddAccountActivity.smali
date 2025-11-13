.class public Landroid/accounts/CantAddAccountActivity;
.super Landroid/app/Activity;
.source "CantAddAccountActivity.java"


# static fields
.field public static final greylist-max-o EXTRA_ERROR_CODE:Ljava/lang/String; = "android.accounts.extra.ERROR_CODE"


# direct methods
.method public static synthetic blacklist $r8$lambda$DUE9HGR8cu_dO5VayMy3a3jWJuI(Landroid/accounts/CantAddAccountActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Landroid/accounts/CantAddAccountActivity;->lambda$onCreate$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onCreate$0()Ljava/lang/String;
    .locals 1

    const v0, 0x10404d4

    invoke-virtual {p0, v0}, Landroid/accounts/CantAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o onCancelButtonClicked(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/accounts/CantAddAccountActivity;->onBackPressed()V

    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1090044

    invoke-virtual {p0, v0}, Landroid/accounts/CantAddAccountActivity;->setContentView(I)V

    const v0, 0x10202bf

    invoke-virtual {p0, v0}, Landroid/accounts/CantAddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1}, Landroid/accounts/CantAddAccountActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Landroid/accounts/CantAddAccountActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/accounts/CantAddAccountActivity$$ExternalSyntheticLambda0;-><init>(Landroid/accounts/CantAddAccountActivity;)V

    const-string v3, "Core.CANT_ADD_ACCOUNT_MESSAGE"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
