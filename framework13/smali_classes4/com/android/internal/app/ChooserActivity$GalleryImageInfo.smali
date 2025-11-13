.class Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GalleryImageInfo"
.end annotation


# instance fields
.field public final blacklist bucketId:I

.field public final blacklist dateTime:Ljava/lang/String;

.field public final blacklist groupId:J

.field public final blacklist groupType:I

.field blacklist image:Landroid/graphics/drawable/Icon;

.field public final blacklist isCloud:Z

.field public final blacklist isFavourite:Z

.field blacklist isGroupSelected:Z

.field public final blacklist isHdr10plus:Z

.field public final blacklist isP3:Z

.field public final blacklist isSlowMotion:Z

.field public blacklist location:Ljava/lang/CharSequence;

.field public final blacklist mediaType:I

.field public final blacklist needVideoConverting:Z

.field public final blacklist position:I

.field public final blacklist sefFileType:I

.field public final blacklist size:J

.field public blacklist typeImageText:Ljava/lang/CharSequence;

.field public final blacklist uri:Landroid/net/Uri;


# direct methods
.method constructor blacklist <init>(Landroid/net/Uri;ZIIJILandroid/graphics/drawable/Icon;IZLjava/lang/CharSequence;JILjava/lang/CharSequence;ZLjava/lang/String;ZZZZ)V
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isFavourite"    # Z
    .param p3, "groupType"    # I
    .param p4, "bucketId"    # I
    .param p5, "groupId"    # J
    .param p7, "position"    # I
    .param p8, "image"    # Landroid/graphics/drawable/Icon;
    .param p9, "sefFileType"    # I
    .param p10, "isGroupSelected"    # Z
    .param p11, "typeImageText"    # Ljava/lang/CharSequence;
    .param p12, "size"    # J
    .param p14, "mediaType"    # I
    .param p15, "location"    # Ljava/lang/CharSequence;
    .param p16, "isCloud"    # Z
    .param p17, "dateTime"    # Ljava/lang/String;
    .param p18, "isSlowMotion"    # Z
    .param p19, "isHdr10plus"    # Z
    .param p20, "needVideoConverting"    # Z
    .param p21, "isP3"    # Z

    .line 13714
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13716
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->uri:Landroid/net/Uri;

    .line 13717
    move/from16 v2, p2

    iput-boolean v2, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isFavourite:Z

    .line 13718
    move/from16 v3, p3

    iput v3, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->groupType:I

    .line 13719
    move/from16 v4, p4

    iput v4, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->bucketId:I

    .line 13720
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->groupId:J

    .line 13721
    move/from16 v7, p7

    iput v7, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->position:I

    .line 13722
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    .line 13723
    move/from16 v9, p9

    iput v9, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->sefFileType:I

    .line 13724
    move/from16 v10, p10

    iput-boolean v10, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isGroupSelected:Z

    .line 13725
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->typeImageText:Ljava/lang/CharSequence;

    .line 13726
    move-wide/from16 v12, p12

    iput-wide v12, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->size:J

    .line 13727
    move/from16 v14, p14

    iput v14, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->mediaType:I

    .line 13728
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->location:Ljava/lang/CharSequence;

    .line 13729
    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isCloud:Z

    .line 13730
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->dateTime:Ljava/lang/String;

    .line 13731
    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isSlowMotion:Z

    .line 13732
    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isHdr10plus:Z

    .line 13733
    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->needVideoConverting:Z

    .line 13734
    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isP3:Z

    .line 13735
    return-void
.end method


# virtual methods
.method public blacklist isGroupImage()I
    .locals 1

    .line 13738
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->groupType:I

    return v0
.end method
