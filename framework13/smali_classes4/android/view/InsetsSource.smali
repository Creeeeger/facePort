.class public Landroid/view/InsetsSource;
.super Ljava/lang/Object;
.source "InsetsSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsSource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFrame:Landroid/graphics/Rect;

.field private blacklist mInsetsRoundedCornerFrame:Z

.field private final blacklist mTmpFrame:Landroid/graphics/Rect;

.field private final blacklist mType:I

.field private blacklist mVisible:Z

.field private blacklist mVisibleFrame:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 331
    new-instance v0, Landroid/view/InsetsSource$1;

    invoke-direct {v0}, Landroid/view/InsetsSource$1;-><init>()V

    sput-object v0, Landroid/view/InsetsSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    .line 57
    iput p1, p0, Landroid/view/InsetsSource;->mType:I

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    .line 59
    invoke-static {p1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSource;->mType:I

    .line 284
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    goto :goto_0

    .line 288
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    .line 290
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    .line 292
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsSource;)V
    .locals 2
    .param p1, "other"    # Landroid/view/InsetsSource;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    .line 63
    iget v0, p1, Landroid/view/InsetsSource;->mType:I

    iput v0, p0, Landroid/view/InsetsSource;->mType:I

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    .line 65
    iget-boolean v0, p1, Landroid/view/InsetsSource;->mVisible:Z

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    .line 66
    iget-object v0, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 68
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    .line 69
    iget-boolean v0, p1, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    .line 70
    return-void
.end method

.method private blacklist calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;
    .locals 4
    .param p1, "relativeFrame"    # Landroid/graphics/Rect;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "ignoreVisibility"    # Z

    .line 151
    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    if-nez v0, :cond_0

    .line 152
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 158
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v0, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 161
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-static {p2, p1, v0}, Landroid/view/InsetsSource;->getIntersection(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    :goto_0
    nop

    .line 164
    .local v0, "hasIntersection":Z
    if-nez v0, :cond_3

    .line 165
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v1

    .line 170
    :cond_3
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    const/16 v3, 0x13

    if-ne v1, v3, :cond_4

    .line 171
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v2, v2, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 175
    :cond_4
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v1, v3, :cond_7

    .line 176
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ne v1, v3, :cond_5

    .line 177
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v1, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 178
    :cond_5
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v3, :cond_6

    .line 179
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v2, v2, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 184
    :cond_6
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_9

    .line 185
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v1, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 189
    :cond_7
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v1, v3, :cond_9

    .line 190
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ne v1, v3, :cond_8

    .line 191
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 192
    :cond_8
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ne v1, v3, :cond_9

    .line 193
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v2, v2, v1, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 196
    :cond_9
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v1
.end method

.method private static blacklist getIntersection(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p0, "a"    # Landroid/graphics/Rect;
    .param p1, "b"    # Landroid/graphics/Rect;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 209
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    .line 210
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 211
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 212
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 213
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 214
    const/4 v0, 0x1

    return v0

    .line 216
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 217
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;
    .locals 1
    .param p1, "relativeFrame"    # Landroid/graphics/Rect;
    .param p2, "ignoreVisibility"    # Z

    .line 139
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0, p2}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;
    .locals 2
    .param p1, "relativeFrame"    # Landroid/graphics/Rect;

    .line 146
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 238
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    const-string v0, "InsetsSource type="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {v0}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    const-string v0, " frame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 242
    const-string v0, " visibleFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    :cond_0
    const-string v0, " visible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 245
    const-string v0, " insetsRoundedCornerFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 246
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 247
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 227
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 228
    .local v0, "token":J
    iget v2, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {v2}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 229
    iget-object v2, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 230
    iget-object v2, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 231
    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 233
    :cond_0
    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 234
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 235
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsSource;->equals(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist equals(Ljava/lang/Object;Z)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "excludeInvisibleImeFrames"    # Z

    .line 259
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 260
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 262
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/InsetsSource;

    .line 264
    .local v2, "that":Landroid/view/InsetsSource;
    iget v3, p0, Landroid/view/InsetsSource;->mType:I

    iget v4, v2, Landroid/view/InsetsSource;->mType:I

    if-eq v3, v4, :cond_2

    return v1

    .line 265
    :cond_2
    iget-boolean v4, p0, Landroid/view/InsetsSource;->mVisible:Z

    iget-boolean v5, v2, Landroid/view/InsetsSource;->mVisible:Z

    if-eq v4, v5, :cond_3

    return v1

    .line 266
    :cond_3
    if-eqz p2, :cond_4

    if-nez v4, :cond_4

    const/16 v4, 0x13

    if-ne v3, v4, :cond_4

    return v0

    .line 267
    :cond_4
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v3, v2, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 268
    :cond_5
    iget-boolean v0, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    iget-boolean v3, v2, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    if-eq v0, v3, :cond_6

    return v1

    .line 269
    :cond_6
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    iget-object v1, v2, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 260
    .end local v2    # "that":Landroid/view/InsetsSource;
    :cond_7
    :goto_0
    return v1
.end method

.method public blacklist getFrame()Landroid/graphics/Rect;
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getInsetsRoundedCornerFrame()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    return v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 102
    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    return v0
.end method

.method public blacklist getVisibleFrame()Landroid/graphics/Rect;
    .locals 1

    .line 110
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 274
    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    .line 275
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 276
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    .line 277
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/view/InsetsSource;->mVisible:Z

    add-int/2addr v1, v2

    .line 278
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    add-int/2addr v0, v2

    .line 279
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method blacklist isUserControllable()Z
    .locals 1

    .line 119
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isVisible()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    return v0
.end method

.method public blacklist set(Landroid/view/InsetsSource;)V
    .locals 2
    .param p1, "other"    # Landroid/view/InsetsSource;

    .line 73
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 74
    iget-boolean v0, p1, Landroid/view/InsetsSource;->mVisible:Z

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    .line 75
    iget-object v0, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 77
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    .line 78
    iget-boolean v0, p1, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    .line 79
    return-void
.end method

.method public blacklist setFrame(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 82
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 83
    return-void
.end method

.method public blacklist setFrame(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 86
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 87
    return-void
.end method

.method public blacklist setInsetsRoundedCornerFrame(Z)V
    .locals 0
    .param p1, "insetsRoundedCornerFrame"    # Z

    .line 127
    iput-boolean p1, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    .line 128
    return-void
.end method

.method public blacklist setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 98
    iput-boolean p1, p0, Landroid/view/InsetsSource;->mVisible:Z

    .line 99
    return-void
.end method

.method public blacklist setVisibleFrame(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "visibleFrame"    # Landroid/graphics/Rect;

    .line 91
    monitor-enter p0

    .line 93
    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 93
    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 94
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsSource: {mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSource;->mType:I

    .line 320
    invoke-static {v1}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    .line 321
    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 323
    iget-object v1, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mVisibleFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInsetsRoundedCornerFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 301
    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 304
    monitor-enter p0

    .line 306
    :try_start_0
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 307
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 314
    iget-boolean v0, p0, Landroid/view/InsetsSource;->mInsetsRoundedCornerFrame:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 315
    return-void

    .line 312
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
