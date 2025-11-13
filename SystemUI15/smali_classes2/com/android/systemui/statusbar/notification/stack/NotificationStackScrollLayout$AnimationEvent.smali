.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field public static final LENGTHS:[I


# instance fields
.field public final animationType:I

.field public final filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field public headsUpFromBottom:Z

.field public final length:J

.field public final mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public viewAfterChangingView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v1, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v1, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v1, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v1, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iput-boolean v1, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v1, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v1, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v1, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v1, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    new-instance v5, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v1, v5, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    new-instance v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v7}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v1, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    iput-boolean v1, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v1, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v1, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v1, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v1, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v1, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v1, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v1, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iput-boolean v1, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    iput-boolean v1, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    new-instance v9, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v9}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v1, v9, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v10}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v1, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v1, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v1, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v1, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    new-instance v11, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v11}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iget-object v12, v11, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->mAnimatedProperties:Landroidx/collection/ArraySet;

    iput-boolean v1, v11, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    iput-boolean v1, v11, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v1, v11, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v1, v11, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v12, v13}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v12, v13}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    iput-boolean v1, v11, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    new-instance v12, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v12}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v1, v12, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v1, v12, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v1, v12, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v1, v12, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    new-instance v13, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v13}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v1, v13, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v1, v13, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v1, v13, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v1, v13, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iput-boolean v1, v13, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    new-instance v14, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v14}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v1, v14, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v1, v14, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v1, v14, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v1, v14, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iput-boolean v1, v14, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    new-instance v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v15}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    move-object/from16 v17, v15

    const/4 v15, 0x1

    iput-boolean v15, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    iput-boolean v15, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    iput-boolean v15, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v15, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v15, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v15, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    new-instance v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v15}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    move-object/from16 v18, v1

    const/4 v1, 0x1

    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    move-object/from16 v19, v15

    const/4 v15, 0x1

    iput-boolean v15, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v15, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v15, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v15, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iput-boolean v15, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    move-object/from16 v15, v18

    move-object/from16 v18, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v17

    move-object/from16 v16, v19

    move-object/from16 v17, v18

    filled-new-array/range {v0 .. v17}, [Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1d0
        0x1d0
        0x168
        0x168
        0xdc
        0xdc
        0x168
        0x1c0
        0x168
        0x168
        0x168
        0x190
        0x190
        0x190
        0x168
        0x168
        0x190
        0x190
    .end array-data
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    aget v0, v0, p2

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V
    .locals 7

    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    aget-object v6, v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJLcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJLcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    iput-wide p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;ILcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V
    .locals 7

    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    aget v0, v0, p2

    int-to-long v4, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJLcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    return-void
.end method
