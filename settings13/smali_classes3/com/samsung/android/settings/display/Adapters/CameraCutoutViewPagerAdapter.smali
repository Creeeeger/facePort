.class public Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "CameraCutoutViewPagerAdapter.java"


# static fields
.field private static final LABEL:[I

.field private static mTabCount:I


# instance fields
.field private mChildFragments:[Landroidx/fragment/app/Fragment;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 25
    sget v1, Lcom/android/settings/R$string;->work_sound_personal_for_samsung:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->work_title:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->LABEL:[I

    .line 29
    array-length v0, v0

    sput v0, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->mTabCount:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;->getFragments()[Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no of fragments "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraCutoutViewPagerAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static convertPosition(I)I
    .locals 2

    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    sget v0, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->mTabCount:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p0

    return v0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCutoutViewPagerAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    array-length p0, p0

    return p0
.end method

.method public getPageTitle(I)Ljava/lang/String;
    .locals 1

    .line 50
    iget-object p0, p0, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->LABEL:[I

    invoke-static {p1}, Lcom/samsung/android/settings/display/Adapters/CameraCutoutViewPagerAdapter;->convertPosition(I)I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
