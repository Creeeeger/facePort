.class public Landroid/accounts/ChooseTypeAndAccountActivity;
.super Landroid/app/Activity;
.source "ChooseTypeAndAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/ChooseTypeAndAccountActivity$CheckedTextView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o EXTRA_ADD_ACCOUNT_AUTH_TOKEN_TYPE_STRING:Ljava/lang/String; = "authTokenType"

.field public static final greylist-max-o EXTRA_ADD_ACCOUNT_OPTIONS_BUNDLE:Ljava/lang/String; = "addAccountOptions"

.field public static final greylist-max-o EXTRA_ADD_ACCOUNT_REQUIRED_FEATURES_STRING_ARRAY:Ljava/lang/String; = "addAccountRequiredFeatures"

.field public static final greylist-max-o EXTRA_ALLOWABLE_ACCOUNTS_ARRAYLIST:Ljava/lang/String; = "allowableAccounts"

.field public static final greylist-max-o EXTRA_ALLOWABLE_ACCOUNT_TYPES_STRING_ARRAY:Ljava/lang/String; = "allowableAccountTypes"

.field public static final greylist-max-o EXTRA_ALWAYS_PROMPT_FOR_ACCOUNT:Ljava/lang/String; = "alwaysPromptForAccount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_DESCRIPTION_TEXT_OVERRIDE:Ljava/lang/String; = "descriptionTextOverride"

.field public static final greylist-max-o EXTRA_SELECTED_ACCOUNT:Ljava/lang/String; = "selectedAccount"

.field private static final greylist-max-o KEY_INSTANCE_STATE_ACCOUNTS_LIST:Ljava/lang/String; = "accountsList"

.field private static final greylist-max-o KEY_INSTANCE_STATE_EXISTING_ACCOUNTS:Ljava/lang/String; = "existingAccounts"

.field private static final greylist-max-o KEY_INSTANCE_STATE_PENDING_REQUEST:Ljava/lang/String; = "pendingRequest"

.field private static final greylist-max-o KEY_INSTANCE_STATE_SELECTED_ACCOUNT_NAME:Ljava/lang/String; = "selectedAccountName"

.field private static final greylist-max-o KEY_INSTANCE_STATE_SELECTED_ADD_ACCOUNT:Ljava/lang/String; = "selectedAddAccount"

.field private static final greylist-max-o KEY_INSTANCE_STATE_VISIBILITY_LIST:Ljava/lang/String; = "visibilityList"

.field public static final greylist-max-o REQUEST_ADD_ACCOUNT:I = 0x2

.field public static final greylist-max-o REQUEST_CHOOSE_TYPE:I = 0x1

.field public static final greylist-max-o REQUEST_NULL:I = 0x0

.field private static final greylist-max-o SELECTED_ITEM_NONE:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AccountChooser"


# instance fields
.field private greylist-max-o mAccounts:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCallingPackage:Ljava/lang/String;

.field private greylist-max-o mCallingUid:I

.field private blacklist mCancelButton:Landroid/widget/Button;

.field private greylist-max-o mDescriptionOverride:Ljava/lang/String;

.field private greylist-max-o mDisallowAddAccounts:Z

.field private greylist-max-o mDontShowPicker:Z

.field private greylist-max-o mExistingAccounts:[Landroid/os/Parcelable;

.field private greylist-max-o mOkButton:Landroid/widget/Button;

.field private greylist-max-o mPendingRequest:I

.field private greylist-max-o mPossiblyVisibleAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSelectedAccountName:Ljava/lang/String;

.field private greylist-max-o mSelectedAddNewAccount:Z

.field private greylist-max-o mSelectedItemIndex:I

.field private greylist-max-o mSetOfAllowableAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSetOfRelevantAccountTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOkButton(Landroid/accounts/ChooseTypeAndAccountActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSelectedItemIndex(Landroid/accounts/ChooseTypeAndAccountActivity;I)V
    .locals 0

    iput p1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    .line 146
    iput v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 147
    iput-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    return-void
.end method

.method private greylist-max-o getAcceptableAccountChoices(Landroid/accounts/AccountManager;)Ljava/util/LinkedHashMap;
    .locals 8
    .param p1, "accountManager"    # Landroid/accounts/AccountManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManager;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    .line 602
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/accounts/AccountManager;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 603
    .local v0, "accountsAndVisibilityForCaller":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 604
    .local v1, "allAccounts":[Landroid/accounts/Account;
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 605
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 606
    .local v2, "accountsToPopulate":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 607
    .local v5, "account":Landroid/accounts/Account;
    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfAllowableAccounts:Ljava/util/Set;

    if-eqz v6, :cond_0

    .line 608
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 609
    goto :goto_1

    .line 611
    :cond_0
    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    if-eqz v6, :cond_1

    iget-object v7, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 612
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 613
    goto :goto_1

    .line 615
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 616
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    .end local v5    # "account":Landroid/accounts/Account;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 619
    :cond_3
    return-object v2
.end method

.method private greylist-max-o getAllowableAccountSet(Landroid/content/Intent;)Ljava/util/Set;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, "setOfAllowableAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    nop

    .line 653
    const-string v1, "allowableAccounts"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 654
    .local v1, "validAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v1, :cond_0

    .line 655
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    move-object v0, v2

    .line 656
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 657
    .local v3, "parcelable":Landroid/os/Parcelable;
    move-object v4, v3

    check-cast v4, Landroid/accounts/Account;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 658
    .end local v3    # "parcelable":Landroid/os/Parcelable;
    goto :goto_0

    .line 660
    :cond_0
    return-object v0
.end method

.method private greylist-max-o getItemIndexToSelect(Ljava/util/ArrayList;Ljava/lang/String;Z)I
    .locals 2
    .param p2, "selectedAccountName"    # Ljava/lang/String;
    .param p3, "selectedAddNewAccount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .line 568
    .local p1, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    if-eqz p3, :cond_0

    .line 569
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 572
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 573
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    return v0

    .line 572
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o getListOfDisplayableOptions(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 584
    .local p1, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 585
    .local v0, "listItems":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 586
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    .end local v1    # "i":I
    :cond_0
    iget-boolean v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    if-nez v1, :cond_1

    .line 589
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104018f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 592
    :cond_1
    return-object v0
.end method

.method private greylist-max-o getReleventAccountTypes(Landroid/content/Intent;)Ljava/util/Set;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, "setOfRelevantAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 631
    const-string v1, "allowableAccountTypes"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, "allowedAccountTypes":[Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 633
    .local v2, "descs":[Landroid/accounts/AuthenticatorDescription;
    new-instance v3, Ljava/util/HashSet;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 634
    .local v3, "supportedAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v2, v5

    .line 635
    .local v6, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v7, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 634
    .end local v6    # "desc":Landroid/accounts/AuthenticatorDescription;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 637
    :cond_0
    if-eqz v1, :cond_1

    .line 638
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 639
    invoke-interface {v0, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 641
    :cond_1
    move-object v0, v3

    .line 643
    :goto_1
    return-object v0
.end method

.method private greylist-max-o onAccountSelected(Landroid/accounts/Account;)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "selected account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountChooser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method private greylist-max-o overrideDescriptionIfSupplied(Ljava/lang/String;)V
    .locals 2
    .param p1, "descriptionOverride"    # Ljava/lang/String;

    .line 668
    const v0, 0x10202bb

    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 669
    .local v0, "descriptionView":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 672
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    :goto_0
    return-void
.end method

.method private final greylist-max-o populateUIAccountList([Ljava/lang/String;)V
    .locals 4
    .param p1, "listItems"    # [Ljava/lang/String;

    .line 681
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 683
    .local v0, "list":Landroid/widget/ListView;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090141

    invoke-direct {v1, p0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 686
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 687
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 688
    new-instance v2, Landroid/accounts/ChooseTypeAndAccountActivity$1;

    invoke-direct {v2, p0}, Landroid/accounts/ChooseTypeAndAccountActivity$1;-><init>(Landroid/accounts/ChooseTypeAndAccountActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 696
    iget v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 697
    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 698
    const/4 v1, 0x2

    const-string v2, "AccountChooser"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List item "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " should be selected"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    return-void
.end method

.method private greylist-max-o setNonLabelThemeAndCallSuperCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 505
    const v0, 0x1030134

    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->setTheme(I)V

    .line 506
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 507
    return-void
.end method

.method private greylist-max-o setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .line 516
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .local v0, "account":Landroid/accounts/Account;
    nop

    .line 518
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/accounts/AccountManager;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 519
    .local v1, "oldVisibility":Ljava/lang/Integer;
    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 520
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 521
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iget-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v2}, Landroid/accounts/AccountManager;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 525
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 527
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    .line 528
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 529
    return-void

    .line 531
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 532
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "authAccount"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v4, "accountType"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 535
    const-string v4, "AccountChooser"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChooseTypeAndAccountActivity.setResultAndFinish: selected account "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 537
    invoke-virtual {v0}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 536
    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_2
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 540
    return-void
.end method

.method private greylist-max-o startChooseAccountTypeActivity()V
    .locals 3

    .line 543
    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    const-string v1, "ChooseAccountTypeActivity.startChooseAccountTypeActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/accounts/ChooseAccountTypeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 547
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 548
    nop

    .line 549
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "allowableAccountTypes"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 548
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    nop

    .line 551
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "addAccountOptions"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 550
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 552
    nop

    .line 553
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "addAccountRequiredFeatures"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    nop

    .line 555
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authTokenType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 554
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 557
    iput v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 558
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onCreate$0$android-accounts-ChooseTypeAndAccountActivity()Ljava/lang/String;
    .locals 1

    .line 229
    const v0, 0x1040499

    invoke-virtual {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 384
    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 385
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 386
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 387
    .local v2, "extras":Landroid/os/Bundle;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChooseTypeAndAccountActivity.onActivityResult(reqCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 394
    if-nez p2, :cond_4

    .line 397
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    invoke-virtual {p0, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    .line 399
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 401
    :cond_3
    return-void

    .line 404
    :cond_4
    const/4 v3, -0x1

    if-ne p2, v3, :cond_e

    .line 405
    const-string v3, "accountType"

    const/4 v4, 0x1

    if-ne p1, v4, :cond_6

    .line 406
    if-eqz p3, :cond_5

    .line 407
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "accountType":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 409
    invoke-virtual {p0, v3}, Landroid/accounts/ChooseTypeAndAccountActivity;->runAddAccountForAuthenticator(Ljava/lang/String;)V

    .line 410
    return-void

    .line 413
    .end local v3    # "accountType":Ljava/lang/String;
    :cond_5
    const-string v3, "ChooseTypeAndAccountActivity.onActivityResult: unable to find account type, pretending the request was canceled"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 415
    :cond_6
    if-ne p1, v1, :cond_d

    .line 416
    const/4 v4, 0x0

    .line 417
    .local v4, "accountName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 419
    .local v5, "accountType":Ljava/lang/String;
    if-eqz p3, :cond_7

    .line 420
    const-string v6, "authAccount"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 421
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 424
    :cond_7
    if-eqz v4, :cond_8

    if-nez v5, :cond_b

    .line 426
    :cond_8
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    iget v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    invoke-virtual {v3, v6, v7}, Landroid/accounts/AccountManager;->getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v3

    .line 428
    .local v3, "currentAccounts":[Landroid/accounts/Account;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 429
    .local v6, "preExistingAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    array-length v8, v7

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_9

    aget-object v10, v7, v9

    .line 430
    .local v10, "accountParcel":Landroid/os/Parcelable;
    move-object v11, v10

    check-cast v11, Landroid/accounts/Account;

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 429
    .end local v10    # "accountParcel":Landroid/os/Parcelable;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 432
    :cond_9
    array-length v7, v3

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_b

    aget-object v9, v3, v8

    .line 434
    .local v9, "account":Landroid/accounts/Account;
    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 435
    iget-object v4, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 436
    iget-object v5, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 437
    goto :goto_3

    .line 432
    .end local v9    # "account":Landroid/accounts/Account;
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 442
    .end local v3    # "currentAccounts":[Landroid/accounts/Account;
    .end local v6    # "preExistingAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/accounts/Account;>;"
    :cond_b
    :goto_3
    if-nez v4, :cond_c

    if-eqz v5, :cond_d

    .line 443
    :cond_c
    invoke-direct {p0, v4, v5}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void

    .line 447
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "accountType":Ljava/lang/String;
    :cond_d
    :goto_4
    const-string v3, "ChooseTypeAndAccountActivity.onActivityResult: unable to find added account, pretending the request was canceled"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_e
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 451
    const-string v1, "ChooseTypeAndAccountActivity.onActivityResult: canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_f
    invoke-virtual {p0, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    .line 454
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 455
    return-void
.end method

.method public greylist-max-o onCancelButtonClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 366
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->onBackPressed()V

    .line 367
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 160
    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChooseTypeAndAccountActivity.onCreate(savedInstanceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addSystemFlags(I)V

    .line 168
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getLaunchedFromUid()I

    move-result v1

    iput v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    .line 169
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    .line 170
    iget v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 171
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    .line 172
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v1

    .line 173
    .local v1, "restrictions":Landroid/os/Bundle;
    nop

    .line 174
    const-string/jumbo v2, "no_modify_accounts"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    .line 178
    .end local v1    # "restrictions":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 180
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->getAllowableAccountSet(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfAllowableAccounts:Ljava/util/Set;

    .line 181
    invoke-direct {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->getReleventAccountTypes(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    .line 182
    const-string v2, "descriptionTextOverride"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDescriptionOverride:Ljava/lang/String;

    .line 184
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 185
    const-string/jumbo v4, "pendingRequest"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 186
    nop

    .line 187
    const-string v4, "existingAccounts"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    iput-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    .line 190
    nop

    .line 191
    const-string/jumbo v4, "selectedAccountName"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    .line 192
    nop

    .line 193
    const-string/jumbo v4, "selectedAddAccount"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    .line 195
    nop

    .line 196
    const-string v4, "accountsList"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 197
    .local v4, "accounts":[Landroid/os/Parcelable;
    nop

    .line 198
    const-string/jumbo v5, "visibilityList"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 199
    .local v5, "visibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    .line 200
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_2

    .line 201
    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    aget-object v8, v4, v6

    check-cast v8, Landroid/accounts/Account;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v7, v8, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 203
    .end local v4    # "accounts":[Landroid/os/Parcelable;
    .end local v5    # "visibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "i":I
    :cond_2
    goto :goto_1

    .line 204
    :cond_3
    iput v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 205
    iput-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    .line 208
    const-string/jumbo v4, "selectedAccount"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    .line 209
    .local v4, "selectedAccount":Landroid/accounts/Account;
    if-eqz v4, :cond_4

    .line 210
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    .line 212
    :cond_4
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/accounts/ChooseTypeAndAccountActivity;->getAcceptableAccountChoices(Landroid/accounts/AccountManager;)Ljava/util/LinkedHashMap;

    move-result-object v5

    iput-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    .line 215
    .end local v4    # "selectedAccount":Landroid/accounts/Account;
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    .line 216
    iget-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 217
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    const/4 v6, 0x3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_5

    .line 218
    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/accounts/Account;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    :cond_5
    goto :goto_2

    .line 222
    :cond_6
    iget-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDisallowAddAccounts:Z

    if-eqz v4, :cond_7

    .line 223
    invoke-virtual {p0, v5}, Landroid/accounts/ChooseTypeAndAccountActivity;->requestWindowFeature(I)Z

    .line 225
    const v4, 0x1090044

    invoke-virtual {p0, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->setContentView(I)V

    .line 226
    const v4, 0x10202bb

    invoke-virtual {p0, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 227
    .local v4, "view":Landroid/widget/TextView;
    const-class v6, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v6}, Landroid/accounts/ChooseTypeAndAccountActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v6

    new-instance v7, Landroid/accounts/ChooseTypeAndAccountActivity$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Landroid/accounts/ChooseTypeAndAccountActivity$$ExternalSyntheticLambda0;-><init>(Landroid/accounts/ChooseTypeAndAccountActivity;)V

    const-string v8, "Core.CANT_ADD_ACCOUNT_MESSAGE"

    invoke-virtual {v6, v8, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, "text":Ljava/lang/String;
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iput-boolean v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDontShowPicker:Z

    .line 235
    .end local v4    # "view":Landroid/widget/TextView;
    .end local v6    # "text":Ljava/lang/String;
    :cond_7
    iget-boolean v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDontShowPicker:Z

    if-eqz v4, :cond_8

    .line 236
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 237
    return-void

    .line 244
    :cond_8
    iget v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    if-nez v4, :cond_a

    .line 247
    iget-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 248
    invoke-direct {p0, p1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setNonLabelThemeAndCallSuperCreate(Landroid/os/Bundle;)V

    .line 249
    iget-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v4, v5, :cond_9

    .line 250
    iget-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSetOfRelevantAccountTypes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->runAddAccountForAuthenticator(Ljava/lang/String;)V

    goto :goto_3

    .line 252
    :cond_9
    invoke-direct {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->startChooseAccountTypeActivity()V

    .line 257
    :cond_a
    :goto_3
    iget-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->getListOfDisplayableOptions(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "listItems":[Ljava/lang/String;
    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAccountName:Ljava/lang/String;

    iget-boolean v8, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedAddNewAccount:Z

    invoke-direct {p0, v6, v7, v8}, Landroid/accounts/ChooseTypeAndAccountActivity;->getItemIndexToSelect(Ljava/util/ArrayList;Ljava/lang/String;Z)I

    move-result v6

    iput v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    .line 261
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 262
    const v6, 0x1090060

    invoke-virtual {p0, v6}, Landroid/accounts/ChooseTypeAndAccountActivity;->setContentView(I)V

    .line 263
    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mDescriptionOverride:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/accounts/ChooseTypeAndAccountActivity;->overrideDescriptionIfSupplied(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, v4}, Landroid/accounts/ChooseTypeAndAccountActivity;->populateUIAccountList([Ljava/lang/String;)V

    .line 267
    const v6, 0x102001a

    invoke-virtual {p0, v6}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    .line 268
    iget v7, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_b

    move v7, v5

    goto :goto_4

    :cond_b
    move v7, v3

    :goto_4
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 271
    const v6, 0x1020019

    invoke-virtual {p0, v6}, Landroid/accounts/ChooseTypeAndAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCancelButton:Landroid/widget/Button;

    .line 273
    invoke-static {p0}, Lcom/samsung/android/util/SemViewUtils;->isOpenThemeApplied(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 274
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 275
    .local v2, "typedValue":Landroid/util/TypedValue;
    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v6, 0x1030128

    invoke-direct {v3, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 276
    .local v3, "wrapper":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1010434

    invoke-virtual {v6, v7, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 278
    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_c

    .line 279
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 280
    .local v5, "buttonTextColor":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCreate: #1 buttonTextColor=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 282
    .end local v5    # "buttonTextColor":I
    :cond_c
    iget v5, v2, Landroid/util/TypedValue;->data:I

    .line 283
    .restart local v5    # "buttonTextColor":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCreate: #2 buttonTextColor=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_5
    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 286
    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTextColor(I)V

    .end local v2    # "typedValue":Landroid/util/TypedValue;
    .end local v3    # "wrapper":Landroid/content/Context;
    .end local v5    # "buttonTextColor":I
    goto/16 :goto_8

    .line 288
    :cond_d
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-eq v6, v5, :cond_12

    .line 290
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wallpapertheme_state"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_13

    .line 292
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 293
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    const/16 v8, 0x20

    if-ne v7, v8, :cond_e

    move v3, v5

    .line 295
    .local v3, "isNightMode":Z
    :cond_e
    if-eqz v3, :cond_f

    .line 296
    const v5, 0x1060937

    goto :goto_6

    .line 297
    :cond_f
    const v5, 0x1060938

    :goto_6
    nop

    .line 295
    invoke-virtual {v6, v5, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 298
    .local v5, "titleColor":I
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 299
    .local v7, "title":Landroid/view/View;
    instance-of v8, v7, Landroid/widget/TextView;

    if-eqz v8, :cond_10

    .line 300
    move-object v8, v7

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    :cond_10
    if-eqz v3, :cond_11

    .line 303
    const v8, 0x106092a

    goto :goto_7

    .line 304
    :cond_11
    const v8, 0x106092b

    :goto_7
    nop

    .line 302
    invoke-virtual {v6, v8, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 305
    .local v2, "buttonTextColor":I
    iget-object v8, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 306
    iget-object v8, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 307
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCreate: colorPalette=true isNightMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " titleColor=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 308
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " buttonTextColor=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 309
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 307
    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 288
    .end local v2    # "buttonTextColor":I
    .end local v3    # "isNightMode":Z
    .end local v5    # "titleColor":I
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "title":Landroid/view/View;
    :cond_12
    :goto_8
    nop

    .line 314
    :cond_13
    :goto_9
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources$Theme;->getTheme()[Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "themes":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a
    array-length v6, v2

    if-ge v5, v6, :cond_14

    .line 317
    aget-object v6, v2, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 320
    .end local v5    # "i":I
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Theme="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 323
    .local v5, "okTextColors":Landroid/content/res/ColorStateList;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ok textColors="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " defaultColor=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v6, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 325
    .local v6, "cancelTextColors":Landroid/content/res/ColorStateList;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cancel textColors="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void
.end method

.method protected whitelist onDestroy()V
    .locals 2

    .line 331
    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    const-string v1, "ChooseTypeAndAccountActivity.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 335
    return-void
.end method

.method public greylist-max-o onOkButtonClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 370
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 372
    invoke-direct {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->startChooseAccountTypeActivity()V

    goto :goto_0

    .line 373
    :cond_0
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 374
    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-direct {p0, v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->onAccountSelected(Landroid/accounts/Account;)V

    .line 376
    :cond_1
    :goto_0
    return-void
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 339
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 340
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    const-string/jumbo v1, "pendingRequest"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    const-string v1, "existingAccounts"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 344
    :cond_0
    iget v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 345
    iget-object v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string/jumbo v2, "selectedAddAccount"

    if-ne v0, v1, :cond_1

    .line 346
    const/4 v0, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 348
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 349
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPossiblyVisibleAccounts:Ljava/util/ArrayList;

    iget v1, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I

    .line 350
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 349
    const-string/jumbo v1, "selectedAccountName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Parcelable;

    .line 355
    .local v0, "accounts":[Landroid/os/Parcelable;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 356
    .local v1, "visibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 357
    .local v2, "i":I
    iget-object v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mAccounts:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 358
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    aput-object v6, v0, v2

    .line 359
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    move v2, v5

    goto :goto_1

    .line 361
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_3
    const-string v3, "accountsList"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 362
    const-string/jumbo v3, "visibilityList"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 363
    return-void
.end method

.method public whitelist run(Landroid/accounts/AccountManagerFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 474
    .local p1, "accountManagerFuture":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 475
    .local v0, "accountManagerResult":Landroid/os/Bundle;
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 477
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 478
    const/4 v2, 0x2

    iput v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mPendingRequest:I

    .line 479
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iget-object v4, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingPackage:Ljava/lang/String;

    iget v5, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mCallingUid:I

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v3

    iput-object v3, p0, Landroid/accounts/ChooseTypeAndAccountActivity;->mExistingAccounts:[Landroid/os/Parcelable;

    .line 481
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, -0x10000001

    and-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 482
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v3, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    return-void

    .line 477
    .end local v0    # "accountManagerResult":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 490
    :catch_0
    move-exception v0

    goto :goto_1

    .line 489
    :catch_1
    move-exception v0

    .line 491
    :goto_0
    nop

    .line 492
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 493
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "errorMessage"

    const-string v2, "error communicating with server"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 495
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 496
    return-void

    .line 485
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_2
    move-exception v0

    .line 486
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/accounts/ChooseTypeAndAccountActivity;->setResult(I)V

    .line 487
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->finish()V

    .line 488
    return-void
.end method

.method protected greylist-max-o runAddAccountForAuthenticator(Ljava/lang/String;)V
    .locals 11
    .param p1, "type"    # Ljava/lang/String;

    .line 458
    const-string v0, "AccountChooser"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runAddAccountForAuthenticator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addAccountOptions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 463
    .local v0, "options":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "addAccountRequiredFeatures"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "requiredFeatures":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/accounts/ChooseTypeAndAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "authTokenType"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 467
    .local v10, "authTokenType":Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, v10

    move-object v5, v1

    move-object v6, v0

    move-object v8, p0

    invoke-virtual/range {v2 .. v9}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 469
    return-void
.end method
