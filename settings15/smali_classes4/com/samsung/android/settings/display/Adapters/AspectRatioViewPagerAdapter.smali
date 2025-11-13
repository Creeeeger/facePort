.class public final Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final LABEL:[I

.field public static final mTabCount:I


# instance fields
.field public mChildFragments:[Landroidx/fragment/app/Fragment;

.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7f1437d8

    const v1, 0x7f1437e2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;->LABEL:[I

    array-length v0, v0

    sput v0, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;->mTabCount:I

    return-void
.end method

.method public static convertPosition(I)I
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;->mTabCount:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p0

    return v0

    :cond_0
    const-string v0, ""

    const-string v1, "AspectRatioViewPagerAdapter"

    invoke-static {p0, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return p0
.end method


# virtual methods
.method public final createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/Adapters/AspectRatioViewPagerAdapter;->mChildFragments:[Landroidx/fragment/app/Fragment;

    array-length p0, p0

    return p0
.end method
