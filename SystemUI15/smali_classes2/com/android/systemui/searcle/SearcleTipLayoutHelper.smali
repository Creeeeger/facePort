.class public final Lcom/android/systemui/searcle/SearcleTipLayoutHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bubbleLayoutWidth:I

.field public final context:Landroid/content/Context;

.field public final direction:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

.field public final gravity:I

.field public final isFoldWithMainDisplay:Z

.field public final isLandscape:Z

.field public final isNaviBtnAndLandscape:Z

.field public final isTablet:Z

.field public final naviAlign:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;

.field public final naviBarHeight:I

.field public final rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZZIZ)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->context:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->rotation:I

    iput-boolean p3, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->isTablet:Z

    iput-boolean p4, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->isFoldWithMainDisplay:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->naviBarHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->isLandscape:Z

    if-eqz v0, :cond_1

    if-nez p5, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->isNaviBtnAndLandscape:Z

    if-eqz p6, :cond_4

    if-eq p6, v2, :cond_3

    if-eq p6, v3, :cond_2

    sget-object p6, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;->Default:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;

    goto :goto_1

    :cond_2
    sget-object p6, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;->Right:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;

    goto :goto_1

    :cond_3
    sget-object p6, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;->Center:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;

    goto :goto_1

    :cond_4
    sget-object p6, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;->Left:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;

    :goto_1
    iput-object p6, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->naviAlign:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;

    const/4 v4, 0x3

    const/16 v5, 0x51

    if-nez p3, :cond_7

    if-eqz p4, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_c

    if-ne p2, v2, :cond_6

    const v5, 0x800015

    goto :goto_4

    :cond_6
    const v5, 0x800013

    goto :goto_4

    :cond_7
    :goto_2
    if-eqz p5, :cond_8

    goto :goto_4

    :cond_8
    sget-object v6, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v2, :cond_b

    const v7, 0x800055

    if-eq v6, v3, :cond_a

    if-eq v6, v4, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    move v5, v7

    goto :goto_4

    :cond_a
    if-eqz p7, :cond_c

    goto :goto_3

    :cond_b
    const v5, 0x800053

    :cond_c
    :goto_4
    iput v5, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->gravity:I

    if-nez p3, :cond_10

    if-eqz p4, :cond_d

    goto :goto_5

    :cond_d
    if-eqz v1, :cond_f

    if-ne p2, v2, :cond_e

    sget-object p2, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->XOnRTL:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    goto :goto_6

    :cond_e
    sget-object p2, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->XOnLTR:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    goto :goto_6

    :cond_f
    sget-object p2, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->Y:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    goto :goto_6

    :cond_10
    :goto_5
    if-eqz p5, :cond_11

    sget-object p2, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->Y:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    goto :goto_6

    :cond_11
    sget-object p2, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p2, p2, p5

    if-eq p2, v2, :cond_15

    if-eq p2, v3, :cond_13

    if-eq p2, v4, :cond_12

    sget-object p2, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->Y:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    goto :goto_6

    :cond_12
    sget-object p2, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->XYOnRTL:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    goto :goto_6

    :cond_13
    if-eqz p7, :cond_14

    sget-object p2, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->XYOnRTL:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    goto :goto_6

    :cond_14
    sget-object p2, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->Y:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    goto :goto_6

    :cond_15
    sget-object p2, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->XYOnLTR:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    :goto_6
    iput-object p2, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->direction:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    if-eqz p3, :cond_17

    const p2, 0x3e82a993    # 0.2552f

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_7
    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_8

    :cond_16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_7

    :cond_17
    if-eqz p4, :cond_19

    const/high16 p2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_7

    :cond_18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_7

    :cond_19
    const p2, 0x3f70a3d7    # 0.94f

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_7

    :cond_1a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_7

    :goto_8
    iput p1, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->bubbleLayoutWidth:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutHelper{direction = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->direction:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gravity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->gravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isTablet = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->isTablet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFoldWithMainDisplay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->isFoldWithMainDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLandscape = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->isLandscape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNaviBtnAndLandscape = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->isNaviBtnAndLandscape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", naviAlign = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->naviAlign:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bubbleWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper;->bubbleLayoutWidth:I

    const-string/jumbo v1, "}"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
