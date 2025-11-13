.class public final Landroid/view/DisplayCutout$ParcelableWrapper;
.super Ljava/lang/Object;
.source "DisplayCutout.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayCutout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParcelableWrapper"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DisplayCutout$ParcelableWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mInner:Landroid/view/DisplayCutout;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper$1;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper$1;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout$ParcelableWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-direct {p0, v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>(Landroid/view/DisplayCutout;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/DisplayCutout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    return-void
.end method

.method public static greylist-max-o readCutoutFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout;
    .locals 32

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return-object v3

    :cond_0
    if-nez v1, :cond_1

    sget-object v2, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v2

    :cond_1
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    const/4 v4, 0x4

    new-array v11, v4, [Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v11, v4}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    sget-object v4, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/graphics/Insets;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readFloat()F

    move-result v27

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readFloat()F

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readFloat()F

    move-result v31

    new-instance v8, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-object v13, v8

    move/from16 v14, v23

    move/from16 v15, v24

    move/from16 v16, v25

    move/from16 v17, v26

    move/from16 v18, v27

    move-object/from16 v19, v28

    move/from16 v20, v29

    move/from16 v21, v30

    move/from16 v22, v31

    invoke-direct/range {v13 .. v22}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v13

    new-instance v14, Landroid/view/DisplayCutout;

    new-instance v7, Landroid/view/DisplayCutout$Bounds;

    const/4 v4, 0x0

    invoke-direct {v7, v11, v4, v3}, Landroid/view/DisplayCutout$Bounds;-><init>([Landroid/graphics/Rect;ZLandroid/view/DisplayCutout$Bounds-IA;)V

    const/4 v10, 0x0

    move-object v4, v14

    move-object v5, v2

    move-object v6, v12

    move-object v9, v13

    invoke-direct/range {v4 .. v10}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[ILandroid/view/DisplayCutout-IA;)V

    return-object v14
.end method

.method public static greylist-max-o writeCutoutToParcel(Landroid/view/DisplayCutout;Landroid/os/Parcel;I)V
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmSafeInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmBounds(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$Bounds;

    move-result-object v0

    invoke-static {v0}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmWaterfallInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDensity()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getCutoutSpec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getRotation()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getScale()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalPixelDisplaySizeRatio()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmSideOverrides(Landroid/view/DisplayCutout;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/view/DisplayCutout$ParcelableWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    move-object v1, p1

    check-cast v1, Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v1, v1, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o get()Landroid/view/DisplayCutout;
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-static {p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->readCutoutFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    return-void
.end method

.method public blacklist scale(F)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v11, p1

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->scale(F)V

    new-instance v1, Landroid/view/DisplayCutout$Bounds;

    iget-object v2, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v2}, Landroid/view/DisplayCutout;->-$$Nest$fgetmBounds(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$Bounds;

    move-result-object v2

    invoke-static {v2}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$fgetmRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/view/DisplayCutout$Bounds;-><init>([Landroid/graphics/Rect;ZLandroid/view/DisplayCutout$Bounds-IA;)V

    move-object v13, v1

    invoke-static {v13, v11}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mscale(Landroid/view/DisplayCutout$Bounds;F)V

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmWaterfallInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/graphics/Rect;->scale(F)V

    new-instance v15, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayWidth()I

    move-result v2

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayHeight()I

    move-result v3

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayWidth()I

    move-result v4

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayHeight()I

    move-result v5

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDensity()F

    move-result v6

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getCutoutSpec()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getRotation()I

    move-result v8

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalPixelDisplaySizeRatio()F

    move-result v10

    move-object v1, v15

    move/from16 v9, p1

    invoke-direct/range {v1 .. v10}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    move-object v6, v15

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmSideOverrides(Landroid/view/DisplayCutout;)[I

    move-result-object v1

    new-instance v9, Landroid/view/DisplayCutout;

    invoke-static {v14}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v4

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, v12

    move-object v5, v13

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[ILandroid/view/DisplayCutout-IA;)V

    iput-object v9, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    return-void
.end method

.method public greylist-max-o set(Landroid/view/DisplayCutout$ParcelableWrapper;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    return-void
.end method

.method public greylist-max-o set(Landroid/view/DisplayCutout;)V
    .locals 0

    iput-object p1, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0, p1, p2}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeCutoutToParcel(Landroid/view/DisplayCutout;Landroid/os/Parcel;I)V

    return-void
.end method
