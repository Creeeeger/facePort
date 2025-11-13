.class Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;
.super Lcom/google/android/material/tabs/TabLayout;
.source "SecStartEndTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$OnTabSelectedListener;
    }
.end annotation


# instance fields
.field private mTabIndex:I

.field private mTimeFormatter:Landroidx/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/util/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimes:[I


# direct methods
.method public static synthetic $r8$lambda$EkidRkSDSeaRuIXLhqfnM8SVSCg(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->defaultFormatter(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iIiZUC5C-Ss8ETvNi_qJscQ-NIQ(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->lambda$reload$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmTabIndex(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTabIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimes(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimes:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTabIndex(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTabIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 50
    sget v0, Lcom/android/settings/R$style;->SecDarkModeTimePickerTab:I

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 37
    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimes:[I

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTabIndex:I

    .line 41
    new-instance p1, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimeFormatter:Landroidx/arch/core/util/Function;

    .line 56
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    return-void
.end method

.method private defaultFormatter(I)Ljava/lang/String;
    .locals 3

    .line 117
    div-int/lit8 p0, p1, 0x3c

    .line 118
    rem-int/lit8 p1, p1, 0x3c

    .line 119
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "%02d:%02d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$reload$0(I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimes:[I

    aget v0, v0, p1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->updateTime(II)V

    return-void
.end method

.method private updateTime(II)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimes:[I

    aput p2, v0, p1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimeFormatter:Landroidx/arch/core/util/Function;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p0, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->seslSetSubText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method


# virtual methods
.method public getTimes()[I
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimes:[I

    return-object p0
.end method

.method public init(IILcom/samsung/android/settings/display/widget/SecStartEndTabLayout$OnTabSelectedListener;Landroidx/arch/core/util/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$OnTabSelectedListener;",
            "Landroidx/arch/core/util/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;-><init>(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$OnTabSelectedListener;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimes:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 79
    aput p2, v0, p1

    .line 80
    iput-object p4, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimeFormatter:Landroidx/arch/core/util/Function;

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->reload()V

    .line 82
    iget p1, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTabIndex:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 84
    iget p1, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTabIndex:I

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimes:[I

    aget p0, p0, p1

    invoke-interface {p3, p1, p0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$OnTabSelectedListener;->onTabSelected(II)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :goto_0
    return-void
.end method

.method public reload()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTimes:[I

    array-length v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;)V

    .line 101
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public select(I)V
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    return-void
.end method

.method public updateTime(I)V
    .locals 1

    .line 91
    iget v0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->mTabIndex:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->updateTime(II)V

    return-void
.end method
