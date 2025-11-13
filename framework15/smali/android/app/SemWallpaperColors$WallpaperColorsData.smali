.class Landroid/app/SemWallpaperColors$WallpaperColorsData;
.super Ljava/lang/Object;
.source "SemWallpaperColors.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemWallpaperColors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperColorsData"
.end annotation


# instance fields
.field private blacklist mExternalKey:J

.field private blacklist mInternalKey:I

.field private blacklist mItem:Landroid/app/SemWallpaperColors$Item;

.field private blacklist mRect:Landroid/graphics/Rect;

.field final synthetic blacklist this$0:Landroid/app/SemWallpaperColors;


# direct methods
.method public constructor blacklist <init>(Landroid/app/SemWallpaperColors;JI)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    invoke-static {p1}, Landroid/app/SemWallpaperColors;->-$$Nest$fgetmArea(Landroid/app/SemWallpaperColors;)Landroid/app/SemWallpaperColorsArea;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/SemWallpaperColorsArea;->get(I)Landroid/graphics/Rect;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v1 .. v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JILandroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/SemWallpaperColors;JILandroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->this$0:Landroid/app/SemWallpaperColors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mExternalKey:J

    iput p4, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mInternalKey:I

    iput-object p5, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mRect:Landroid/graphics/Rect;

    iput-object p6, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mItem:Landroid/app/SemWallpaperColors$Item;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/SemWallpaperColors;Landroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JILandroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V

    return-void
.end method


# virtual methods
.method public blacklist clone()Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mItem:Landroid/app/SemWallpaperColors$Item;

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$Item;->clone()Landroid/app/SemWallpaperColors$Item;

    move-result-object v1

    iput-object v1, v0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mItem:Landroid/app/SemWallpaperColors$Item;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->clone()Landroid/app/SemWallpaperColors$WallpaperColorsData;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExternalKey()J
    .locals 2

    iget-wide v0, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mExternalKey:J

    return-wide v0
.end method

.method public blacklist getInternalKey()I
    .locals 1

    iget v0, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mInternalKey:I

    return v0
.end method

.method public blacklist getItem()Landroid/app/SemWallpaperColors$Item;
    .locals 1

    iget-object v0, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mItem:Landroid/app/SemWallpaperColors$Item;

    return-object v0
.end method

.method public blacklist getRect()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public blacklist setExternalKey(J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mExternalKey:J

    return-void
.end method

.method public blacklist setInternalKey(I)V
    .locals 0

    iput p1, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mInternalKey:I

    return-void
.end method

.method public blacklist setItem(Landroid/app/SemWallpaperColors$Item;)V
    .locals 0

    iput-object p1, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mItem:Landroid/app/SemWallpaperColors$Item;

    return-void
.end method

.method public blacklist setRect(Landroid/graphics/Rect;)V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/SemWallpaperColors$WallpaperColorsData;->mRect:Landroid/graphics/Rect;

    return-void
.end method
