.class Landroid/app/Notification$StandardTemplateParams;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StandardTemplateParams"
.end annotation


# static fields
.field public static final blacklist DECORATION_MINIMAL:I = 0x1

.field public static final blacklist DECORATION_PARTIAL:I = 0x2

.field public static blacklist VIEW_TYPE_BIG:I

.field public static blacklist VIEW_TYPE_GROUP_HEADER:I

.field public static blacklist VIEW_TYPE_GROUP_HEADER_EXPANDED:I

.field public static blacklist VIEW_TYPE_HEADS_UP:I

.field public static blacklist VIEW_TYPE_INSIGNIFICANT:I

.field public static blacklist VIEW_TYPE_MINIMIZED:I

.field public static blacklist VIEW_TYPE_NORMAL:I

.field public static blacklist VIEW_TYPE_PUBLIC:I

.field public static blacklist VIEW_TYPE_UNSPECIFIED:I


# instance fields
.field blacklist allowColorization:Z

.field blacklist mAllowTextWithProgress:Z

.field blacklist mCallStyleActions:Z

.field blacklist mHeaderTextSecondary:Ljava/lang/CharSequence;

.field blacklist mHeaderless:Z

.field blacklist mHideActions:Z

.field blacklist mHideAppName:Z

.field blacklist mHideLeftIcon:Z

.field blacklist mHideProgress:Z

.field blacklist mHideRightIcon:Z

.field blacklist mHideSnoozeButton:Z

.field blacklist mHideSubText:Z

.field blacklist mHideTime:Z

.field blacklist mHideTitle:Z

.field blacklist mHighlightExpander:Z

.field blacklist mPromotedPicture:Landroid/graphics/drawable/Icon;

.field blacklist mSubText:Ljava/lang/CharSequence;

.field blacklist mText:Ljava/lang/CharSequence;

.field blacklist mTextViewId:I

.field blacklist mTitle:Ljava/lang/CharSequence;

.field blacklist mTitleViewId:I

.field blacklist mViewType:I

.field greylist-max-o maxRemoteInputHistory:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    const/4 v0, 0x1

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    const/4 v0, 0x2

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    const/4 v0, 0x3

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    const/4 v0, 0x4

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_MINIMIZED:I

    const/4 v0, 0x5

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_PUBLIC:I

    const/4 v0, 0x6

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER:I

    const/4 v0, 0x7

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER_EXPANDED:I

    const/16 v0, 0x8

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_INSIGNIFICANT:I

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/Notification$StandardTemplateParams-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$StandardTemplateParams;-><init>()V

    return-void
.end method


# virtual methods
.method final blacklist allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mAllowTextWithProgress:Z

    return-object p0
.end method

.method final blacklist callStyleActions(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    return-object p0
.end method

.method public blacklist decorationType(I)Landroid/app/Notification$StandardTemplateParams;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideTitle(Z)Landroid/app/Notification$StandardTemplateParams;

    const/4 v1, 0x0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideActions(Z)Landroid/app/Notification$StandardTemplateParams;

    return-object p0
.end method

.method final blacklist disallowColorization()Landroid/app/Notification$StandardTemplateParams;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    return-object p0
.end method

.method final greylist-max-o fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;
    .locals 2

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mTitle:Ljava/lang/CharSequence;

    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mText:Ljava/lang/CharSequence;

    const-string v1, "android.subText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mSubText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method final blacklist hasTitle()Z
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$StandardTemplateParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final greylist-max-o headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderTextSecondary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist headerless(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    return-object p0
.end method

.method final blacklist hideActions(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideActions:Z

    return-object p0
.end method

.method public blacklist hideAppName(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    return-object p0
.end method

.method final blacklist hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideLeftIcon:Z

    return-object p0
.end method

.method final blacklist hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideProgress:Z

    return-object p0
.end method

.method final blacklist hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideRightIcon:Z

    return-object p0
.end method

.method final blacklist hideSnoozeButton(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSnoozeButton:Z

    return-object p0
.end method

.method public blacklist hideSubText(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    return-object p0
.end method

.method public blacklist hideTime(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTime:Z

    return-object p0
.end method

.method final blacklist hideTitle(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    return-object p0
.end method

.method final blacklist highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    return-object p0
.end method

.method final blacklist promotedPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method final greylist-max-o reset()Landroid/app/Notification$StandardTemplateParams;
    .locals 3

    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTime:Z

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideActions:Z

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideProgress:Z

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSnoozeButton:Z

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideLeftIcon:Z

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideRightIcon:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mAllowTextWithProgress:Z

    const v2, 0x1020016

    iput v2, p0, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    const v2, 0x102062a

    iput v2, p0, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mTitle:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mText:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mSubText:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderTextSecondary:Ljava/lang/CharSequence;

    const/4 v1, 0x3

    iput v1, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    return-object p0
.end method

.method public greylist-max-o setMaxRemoteInputHistory(I)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    return-object p0
.end method

.method final blacklist summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mSubText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method final greylist-max-o text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist textViewId(I)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    return-object p0
.end method

.method final greylist-max-o title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist titleViewId(I)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    return-object p0
.end method

.method final blacklist viewType(I)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    return-object p0
.end method
