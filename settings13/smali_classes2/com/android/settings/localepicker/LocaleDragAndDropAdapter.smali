.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;,
        Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;,
        Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddLanguageBtnLayout:Landroid/view/View;

.field private mApplyBtnLayout:Landroid/widget/LinearLayout;

.field private final mContext:Landroid/content/Context;

.field private mDividerDecoration:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;

.field private mDragEnabled:Z

.field private mEditMode:Z

.field private final mFeedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private mListener:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;

.field private mLocaleOverlayManager:Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

.field private mLocalesSetLast:Landroid/os/LocaleList;

.field private mLocalesToSetNext:Landroid/os/LocaleList;

.field private mMenu:Landroid/view/Menu;

.field private mNofiticationDialog:Landroidx/appcompat/app/AlertDialog;

.field private mNumberFormatter:Ljava/text/NumberFormat;

.field private mParentView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRemoveMode:Z

.field private mSelectMode:Z

.field private mShowingAddDialog:Z

.field private mTempAddLocaleId:Ljava/lang/String;

.field private mTempFeedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAddLanguageBtnLayout(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mAddLanguageBtnLayout:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDragEnabled(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEditMode(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFeedItemList(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemTouchHelper(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mListener:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocaleOverlayManager(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocaleOverlayManager:Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalesSetLast(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalesToSetNext(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNofiticationDialog(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNofiticationDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectMode(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mSelectMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmShowingAddDialog(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mShowingAddDialog:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTempAddLocaleId(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempAddLocaleId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLocales(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLocales()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 75
    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    const/4 v2, 0x1

    .line 76
    iput-boolean v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    .line 77
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    .line 81
    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mSelectMode:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    .line 84
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNofiticationDialog:Landroidx/appcompat/app/AlertDialog;

    const-string v3, ""

    .line 86
    iput-object v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempAddLocaleId:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mApplyBtnLayout:Landroid/widget/LinearLayout;

    .line 92
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mAddLanguageBtnLayout:Landroid/view/View;

    .line 480
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    .line 481
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    .line 484
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocaleOverlayManager:Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    .line 137
    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    .line 138
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41000000    # 8.0f

    .line 140
    invoke-static {v2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    if-eqz p2, :cond_0

    const-string v0, "LocaleDragAndDropAdapter"

    const-string v2, "init localeList"

    .line 145
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempFeedItemList:Ljava/util/List;

    .line 147
    invoke-direct {p0, p2, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->copyList(Ljava/util/List;Ljava/util/List;)V

    .line 148
    invoke-direct {p0, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getLocaleList(Ljava/util/List;)Landroid/os/LocaleList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    .line 152
    :cond_0
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;IIF)V

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method private copyList(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 825
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 826
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 828
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 821
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "List is null. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocaleDragAndDropAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getLocaleList(Ljava/util/List;)Landroid/os/LocaleList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Landroid/os/LocaleList;"
        }
    .end annotation

    .line 833
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .line 834
    new-array v0, p0, [Ljava/util/Locale;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 837
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 838
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v0, v1

    .line 839
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lang["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocaleDragAndDropAdapter"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 842
    :cond_0
    new-instance p0, Landroid/os/LocaleList;

    invoke-direct {p0, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    return-object p0
.end method

.method private restoreFeedItemList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 660
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 662
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v1

    .line 663
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setDragEnabled(Z)V
    .locals 0

    .line 545
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    return-void
.end method

.method private showSetDefaultLocaleDialog(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 5

    .line 672
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNofiticationDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v0, 0x0

    .line 674
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNofiticationDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    const/4 v0, 0x1

    .line 677
    iput-boolean v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mShowingAddDialog:Z

    .line 678
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->language_settings_set_locale_title:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 679
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 678
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 681
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 682
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->set_as_default_btn:I

    new-instance v2, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$8;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$8;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 683
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->keep_current_btn:I

    new-instance v2, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$7;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$7;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 692
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$6;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$6;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V

    .line 700
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 708
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNofiticationDialog:Landroidx/appcompat/app/AlertDialog;

    .line 710
    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 720
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mAddLanguageBtnLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 721
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNofiticationDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;)V

    .line 724
    :cond_1
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNofiticationDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateLocales()V
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    .line 536
    new-instance v0, Lcom/android/settings/shortcut/ShortcutsUpdateTask;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/shortcut/ShortcutsUpdateTask;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x0

    .line 538
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    .line 540
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    return-void
.end method


# virtual methods
.method addLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 1

    .line 441
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempAddLocaleId:Ljava/lang/String;

    .line 442
    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->showSetDefaultLocaleDialog(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    return-void
.end method

.method public doTheUpdate()V
    .locals 7

    .line 451
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 452
    new-array v1, v0, [Ljava/util/Locale;

    .line 454
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mSelectMode:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v3

    move v4, v2

    :goto_0
    if-ge v2, v0, :cond_3

    .line 457
    iget-object v5, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 458
    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getSelected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 459
    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    .line 463
    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v2, 0x1

    .line 465
    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v1, v6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v3, v0, :cond_3

    .line 471
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 472
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 476
    :cond_3
    new-instance v0, Landroid/os/LocaleList;

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 477
    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLocalesWhenAnimationStops(Landroid/os/LocaleList;)V

    return-void
.end method

.method getCheckedCount()I
    .locals 2

    .line 427
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 428
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getDefaultLanguageChecked()Z
    .locals 1

    .line 870
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result p0

    return p0
.end method

.method public getDefaultLanguageName()Ljava/lang/String;
    .locals 1

    .line 866
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultLangugeNameAfterDelete()Ljava/lang/String;
    .locals 3

    .line 846
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 848
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 849
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeleteLanguageName()Ljava/lang/String;
    .locals 3

    .line 856
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 858
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 859
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemCount()I
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    .line 360
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 363
    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setDragEnabled(Z)V

    goto :goto_2

    .line 361
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setDragEnabled(Z)V

    :goto_2
    return v0
.end method

.method public getNotificationDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 668
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNofiticationDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public initializeSelectBoxState()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 648
    :goto_0
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-nez v1, :cond_0

    .line 650
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setSelected(Z)V

    goto :goto_1

    .line 652
    :cond_0
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 655
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public isEditMode()Z
    .locals 0

    .line 891
    iget-boolean p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    return p0
.end method

.method public isSelectMode()Z
    .locals 0

    .line 878
    iget-boolean p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mSelectMode:Z

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 66
    check-cast p1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onBindViewHolder(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;I)V
    .locals 5

    .line 263
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 264
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->getLocaleDragCell()Lcom/android/settings/localepicker/LocaleDragCell;

    move-result-object p1

    .line 265
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-virtual {p1, v1, v2}, Lcom/android/settings/localepicker/LocaleDragCell;->setLabelAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/settings/localepicker/LocaleDragCell;->setLocalized(Z)V

    .line 269
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    add-int/lit8 v3, p2, 0x1

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/localepicker/LocaleDragCell;->setMiniLabel(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 272
    invoke-virtual {p1, v1}, Lcom/android/settings/localepicker/LocaleDragCell;->setShowMiniLabel(Z)V

    .line 273
    iget-boolean v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    invoke-virtual {p1, v3}, Lcom/android/settings/localepicker/LocaleDragCell;->setShowCheckbox(Z)V

    .line 275
    iget-boolean v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Lcom/android/settings/localepicker/LocaleDragCell;->setShowHandle(Z)V

    .line 276
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p1, p2}, Lcom/android/settings/localepicker/LocaleDragCell;->setPosition(I)V

    .line 278
    iget-boolean p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    if-nez p2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getSelected()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/settings/localepicker/LocaleDragCell;->setShowSelectBox(Z)V

    .line 280
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object p2

    const/4 v1, 0x0

    .line 283
    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 284
    iget-boolean v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v4

    :cond_2
    invoke-virtual {p2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 287
    new-instance v1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings/localepicker/LocaleDragCell;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    new-instance v1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings/localepicker/LocaleDragCell;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 346
    iget-boolean v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    if-eqz v1, :cond_4

    .line 347
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->ticked:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2

    .line 348
    :cond_3
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->not_ticked:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2

    .line 350
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getSelected()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->selected:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2

    .line 351
    :cond_5
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->not_selected:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 353
    :goto_2
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setStateDescription(Ljava/lang/CharSequence;)V

    const p0, 0x8000

    .line 354
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;
    .locals 2

    .line 256
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->sec_locale_drag_cell:I

    const/4 v1, 0x0

    .line 257
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/localepicker/LocaleDragCell;

    .line 258
    new-instance p2, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings/localepicker/LocaleDragCell;)V

    return-object p2
.end method

.method onItemMove(II)V
    .locals 4

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 371
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 372
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 376
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 377
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Negative position in onItemMove %d -> %d"

    .line 376
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocaleDragAndDropAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method removeChecked()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 417
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 421
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    return-void
.end method

.method removeItem(I)V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 411
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 593
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "order_locales"

    .line 595
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 596
    invoke-direct {p0, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->restoreFeedItemList(Ljava/util/ArrayList;)V

    const/4 v0, 0x3

    .line 597
    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    const-string/jumbo v0, "selectedLocales"

    .line 599
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 600
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 604
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    goto :goto_0

    .line 606
    :cond_1
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string/jumbo v0, "showingLocaleAddDialog"

    .line 608
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mShowingAddDialog:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "tempAddLocaleID"

    const-string v1, ""

    .line 610
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempAddLocaleId:Ljava/lang/String;

    .line 611
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 612
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempAddLocaleId:Ljava/lang/String;

    .line 613
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object p1

    .line 614
    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->showSetDefaultLocaleDialog(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public roundingCornerAll(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0xf

    .line 799
    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 800
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    .line 801
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 800
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 557
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 559
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 560
    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 561
    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    if-eqz v4, :cond_0

    .line 565
    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "selectedLocales"

    .line 569
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 572
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "order_locales"

    .line 573
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 575
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    if-nez v0, :cond_4

    .line 576
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mShowingAddDialog:Z

    const-string/jumbo v1, "showingLocaleAddDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 577
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mShowingAddDialog:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempAddLocaleId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 578
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempAddLocaleId:Ljava/lang/String;

    const-string/jumbo v0, "tempAddLocaleID"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setActionBarEditButtonState(Z)V
    .locals 1

    .line 789
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mMenu:Landroid/view/Menu;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 790
    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 792
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public setAddLanguageBtnLayout(Landroid/view/View;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mAddLanguageBtnLayout:Landroid/view/View;

    return-void
.end method

.method public setApplyBtnLayout(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mApplyBtnLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setEditMode(Z)V
    .locals 3

    .line 882
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mEditMode:Z

    .line 883
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 885
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    .line 886
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLocaleOverlayManager(Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocaleOverlayManager:Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    return-void
.end method

.method public setMenuItem(Landroid/view/Menu;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mMenu:Landroid/view/Menu;

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mListener:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;

    return-void
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    .line 251
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method setRemoveMode(Z)V
    .locals 3

    .line 390
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    .line 391
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 393
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    .line 394
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectMode(Z)V
    .locals 0

    .line 874
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mSelectMode:Z

    return-void
.end method

.method public updateLanguageViewState(I)V
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 774
    :cond_0
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mAddLanguageBtnLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 775
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mApplyBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 776
    invoke-virtual {p0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateRecyclerViewDivider(I)V

    .line 777
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->roundingCornerAll(Landroid/view/View;)V

    .line 778
    invoke-virtual {p0, v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setEditMode(Z)V

    .line 779
    invoke-virtual {p0, v3}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setSelectMode(Z)V

    .line 780
    invoke-virtual {p0, v3}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setActionBarEditButtonState(Z)V

    .line 781
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 767
    :cond_1
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mAddLanguageBtnLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 768
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mApplyBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 769
    invoke-virtual {p0, v4}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateRecyclerViewDivider(I)V

    .line 770
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->roundingCornerAll(Landroid/view/View;)V

    .line 771
    invoke-virtual {p0, v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setSelectMode(Z)V

    goto :goto_0

    .line 756
    :cond_2
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mAddLanguageBtnLayout:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 757
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mApplyBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 758
    invoke-virtual {p0, v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateRecyclerViewDivider(I)V

    .line 759
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 760
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    .line 761
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 760
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 762
    invoke-virtual {p0, v3}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setSelectMode(Z)V

    .line 763
    invoke-virtual {p0, v3}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setEditMode(Z)V

    .line 764
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public updateLocalesWhenAnimationStops(Landroid/os/LocaleList;)V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 498
    :cond_0
    invoke-static {p1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 500
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    .line 501
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    .line 502
    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$5;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    return-void
.end method

.method public updateRecyclerViewDivider(I)V
    .locals 2

    .line 805
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDividerDecoration:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;

    if-nez v0, :cond_1

    .line 810
    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDividerDecoration:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDividerDecoration:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 814
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDividerDecoration:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;

    invoke-virtual {v0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->updateDividerState(I)V

    .line 815
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDividerDecoration:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public updateSelectBoxState(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 637
    :goto_0
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 638
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setSelected(Z)V

    goto :goto_1

    .line 641
    :cond_0
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
