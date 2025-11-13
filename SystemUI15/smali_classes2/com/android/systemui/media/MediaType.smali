.class public final enum Lcom/android/systemui/media/MediaType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/media/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/media/MediaType;

.field public static final enum COVER:Lcom/android/systemui/media/MediaType;

.field public static final enum ENR:Lcom/android/systemui/media/MediaType;

.field public static final enum OA:Lcom/android/systemui/media/MediaType;

.field public static final enum QS:Lcom/android/systemui/media/MediaType;


# instance fields
.field private final layout:I

.field private final supportArtwork:Z

.field private final supportBudsButton:Z

.field private final supportCapsule:Z

.field private final supportCarousel:Z

.field private final supportClick:Z

.field private final supportColorSchemeTransition:Z

.field private final supportDetailView:Z

.field private final supportExpandable:Z

.field private final supportFixedFontSize:Z

.field private final supportGuts:Z

.field private final supportMediaOutput:Z

.field private final supportOAChip:Z

.field private final supportPlayLastSong:Z

.field private final supportRecoilAnimation:Z

.field private final supportRoundedCorner:Z

.field private final supportSettings:Z

.field private final supportSquiggly:Z

.field private final supportWidgetTimer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v15, Lcom/android/systemui/media/MediaType;

    move-object v0, v15

    const/16 v20, 0x1

    const/16 v21, 0x0

    const-string v1, "QS"

    const/4 v2, 0x0

    const v3, 0x7f0d038f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x1

    move-object/from16 v22, v15

    move/from16 v15, v16

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-direct/range {v0 .. v21}, Lcom/android/systemui/media/MediaType;-><init>(Ljava/lang/String;IIZZZZZZZZZZZZZZZZZZ)V

    move-object/from16 v0, v22

    sput-object v0, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    new-instance v15, Lcom/android/systemui/media/MediaType;

    move-object v1, v15

    const/16 v22, 0x0

    const-string v2, "COVER"

    const/4 v3, 0x1

    const v4, 0x7f0d0390

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v23, v15

    move/from16 v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v1 .. v22}, Lcom/android/systemui/media/MediaType;-><init>(Ljava/lang/String;IIZZZZZZZZZZZZZZZZZZ)V

    move-object/from16 v1, v23

    sput-object v1, Lcom/android/systemui/media/MediaType;->COVER:Lcom/android/systemui/media/MediaType;

    new-instance v15, Lcom/android/systemui/media/MediaType;

    move-object v2, v15

    const/16 v23, 0x1

    const-string v3, "OA"

    const/4 v4, 0x2

    const v5, 0x7f0d038f

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x1

    move-object/from16 v24, v15

    move/from16 v15, v16

    const/16 v16, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v2 .. v23}, Lcom/android/systemui/media/MediaType;-><init>(Ljava/lang/String;IIZZZZZZZZZZZZZZZZZZ)V

    move-object/from16 v2, v24

    sput-object v2, Lcom/android/systemui/media/MediaType;->OA:Lcom/android/systemui/media/MediaType;

    new-instance v15, Lcom/android/systemui/media/MediaType;

    move-object v3, v15

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v4, "ENR"

    const/4 v5, 0x3

    const v6, 0x7f0d038f

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x1

    move-object/from16 v25, v15

    move/from16 v15, v16

    const/16 v16, 0x1

    const/16 v22, 0x1

    invoke-direct/range {v3 .. v24}, Lcom/android/systemui/media/MediaType;-><init>(Ljava/lang/String;IIZZZZZZZZZZZZZZZZZZ)V

    move-object/from16 v3, v25

    sput-object v3, Lcom/android/systemui/media/MediaType;->ENR:Lcom/android/systemui/media/MediaType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/media/MediaType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/MediaType;->$VALUES:[Lcom/android/systemui/media/MediaType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZZZZZZZZZZZZZZZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZZZZZZZZZZZZZZZZ)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    move v1, p3

    iput v1, v0, Lcom/android/systemui/media/MediaType;->layout:I

    move v1, p4

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportArtwork:Z

    move v1, p5

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportCapsule:Z

    move v1, p6

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportCarousel:Z

    move v1, p7

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportColorSchemeTransition:Z

    move v1, p8

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportExpandable:Z

    move v1, p9

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportFixedFontSize:Z

    move v1, p10

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportGuts:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportRoundedCorner:Z

    move v1, p12

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportSettings:Z

    move v1, p13

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportSquiggly:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportWidgetTimer:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportBudsButton:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportPlayLastSong:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportDetailView:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportMediaOutput:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportClick:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportRecoilAnimation:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaType;->supportOAChip:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/media/MediaType;
    .locals 1

    const-class v0, Lcom/android/systemui/media/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/media/MediaType;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/MediaType;->$VALUES:[Lcom/android/systemui/media/MediaType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/media/MediaType;

    return-object v0
.end method


# virtual methods
.method public final getLayout()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaType;->layout:I

    return p0
.end method

.method public final getSupportArtwork()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportArtwork:Z

    return p0
.end method

.method public final getSupportBudsButton()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportBudsButton:Z

    return p0
.end method

.method public final getSupportCapsule()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportCapsule:Z

    return p0
.end method

.method public final getSupportCarousel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportCarousel:Z

    return p0
.end method

.method public final getSupportClick()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportClick:Z

    return p0
.end method

.method public final getSupportColorSchemeTransition()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportColorSchemeTransition:Z

    return p0
.end method

.method public final getSupportDetailView()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportDetailView:Z

    return p0
.end method

.method public final getSupportExpandable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportExpandable:Z

    return p0
.end method

.method public final getSupportFixedFontSize()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportFixedFontSize:Z

    return p0
.end method

.method public final getSupportGuts()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportGuts:Z

    return p0
.end method

.method public final getSupportMediaOutput()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportMediaOutput:Z

    return p0
.end method

.method public final getSupportOAChip()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportOAChip:Z

    return p0
.end method

.method public final getSupportPlayLastSong()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportPlayLastSong:Z

    return p0
.end method

.method public final getSupportRecoilAnimation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportRecoilAnimation:Z

    return p0
.end method

.method public final getSupportRoundedCorner()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportRoundedCorner:Z

    return p0
.end method

.method public final getSupportSettings()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportSettings:Z

    return p0
.end method

.method public final getSupportSquiggly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportSquiggly:Z

    return p0
.end method

.method public final getSupportWidgetTimer()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaType;->supportWidgetTimer:Z

    return p0
.end method
