.class public final Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mContainerView:Landroid/widget/LinearLayout;

.field public final mEmptyStateSet:[I

.field public final mGroupExpandedStateSet:[I

.field public final mGroupPosition:I

.field public mHeaderView:Landroid/view/ViewGroup;

.field public final mHideContainerLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public final mHideListLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public mIndicatorView:Landroid/widget/ImageView;

.field public mIsListExpanded:Z

.field public mListView:Landroid/widget/ListView;

.field public final mObserver:Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter$1;

.field public final mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

.field public final mShowLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public final synthetic this$0:Lcom/android/settings/TrustedCredentialsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;I)V
    .locals 4

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const p1, 0x10100a8

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupExpandedStateSet:[I

    const/4 p1, 0x0

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mEmptyStateSet:[I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHideContainerLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHideListLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v3, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mShowLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    new-instance p1, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter$1;-><init>(Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIsListExpanded:Z

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iput p3, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupPosition:I

    invoke-virtual {p2, p1}, Landroid/widget/BaseExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public static synthetic access$001(Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static synthetic access$101(Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, p0}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getChildrenCount(I)I

    move-result p0

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupPosition:I

    const/4 v3, 0x0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final notifyDataSetInvalidated()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIsListExpanded:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIsListExpanded:Z

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/TrustedCredentialsFragment;->mDescription:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIsListExpanded:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    const v2, 0x7f142136

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    const v2, 0x7f142135

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->refreshViews()V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupPosition:I

    invoke-virtual {p2, p0, p3}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object p0

    new-instance p2, Lcom/android/settings/TrustedCredentialsDialogBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    const/4 p1, 0x0

    if-nez p0, :cond_0

    new-array p0, p1, [Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    new-array p3, p3, [Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    aput-object p0, p3, p1

    move-object p0, p3

    :goto_0
    iget-object p1, p2, Lcom/android/settings/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    iput-object p0, p1, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public final refreshViews()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIndicatorView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIsListExpanded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mGroupExpandedStateSet:[I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mEmptyStateSet:[I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mListView:Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIsListExpanded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mShowLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHideListLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mIsListExpanded:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mShowLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->mHideContainerLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
