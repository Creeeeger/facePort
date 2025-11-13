.class public Landroid/view/InsetsSourceControl;
.super Ljava/lang/Object;
.source "InsetsSourceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsSourceControl$Array;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mControlledByPolicy:Z

.field private final blacklist mId:I

.field private final blacklist mInitiallyVisible:Z

.field private blacklist mInsetsHint:Landroid/graphics/Insets;

.field private final blacklist mLeash:Landroid/view/SurfaceControl;

.field private blacklist mParcelableFlags:I

.field private blacklist mSkipAnimationOnce:Z

.field private final blacklist mSurfacePosition:Landroid/graphics/Point;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/InsetsSourceControl$1;

    invoke-direct {v0}, Landroid/view/InsetsSourceControl$1;-><init>()V

    sput-object v0, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Point;Landroid/graphics/Insets;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/view/InsetsSourceControl;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Point;Landroid/graphics/Insets;Z)V

    return-void
.end method

.method public constructor blacklist <init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Point;Landroid/graphics/Insets;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p7, p0, Landroid/view/InsetsSourceControl;->mControlledByPolicy:Z

    iput p1, p0, Landroid/view/InsetsSourceControl;->mId:I

    iput p2, p0, Landroid/view/InsetsSourceControl;->mType:I

    iput-object p3, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    iput-boolean p4, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    iput-object p5, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iput-object p6, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mControlledByPolicy:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsSourceControl;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/view/InsetsSourceControl;->mId:I

    iput v0, p0, Landroid/view/InsetsSourceControl;->mId:I

    iget v0, p1, Landroid/view/InsetsSourceControl;->mType:I

    iput v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    iget-object v0, p1, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    const-string v2, "InsetsSourceControl"

    invoke-direct {v0, v1, v2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    :goto_0
    iget-boolean v0, p1, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p1, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget-object v0, p1, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getAndClearSkipAnimationOnce()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    iget-boolean v0, p1, Landroid/view/InsetsSourceControl;->mControlledByPolicy:Z

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mControlledByPolicy:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "InsetsSourceControl mId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/InsetsSourceControl;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLeash="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mInitiallyVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSurfacePosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mInsetsHint="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mSkipAnimationOnce="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mControlledByPolicy="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mControlledByPolicy:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    const-wide v5, 0x10500000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    const-wide v5, 0x10500000002L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    const-wide v5, 0x10b00000003L

    invoke-virtual {v4, p1, v5, v6}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    const-wide v4, 0x10500000004L

    iget v6, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/InsetsSourceControl;

    iget-object v3, v2, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    iget v4, p0, Landroid/view/InsetsSourceControl;->mId:I

    iget v5, v2, Landroid/view/InsetsSourceControl;->mId:I

    if-ne v4, v5, :cond_3

    iget v4, p0, Landroid/view/InsetsSourceControl;->mType:I

    iget v5, v2, Landroid/view/InsetsSourceControl;->mType:I

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eq v4, v3, :cond_2

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-boolean v4, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    iget-boolean v5, v2, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget-object v5, v2, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iget-object v5, v2, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {v4, v5}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    iget-boolean v5, v2, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    if-ne v4, v5, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public blacklist getAndClearSkipAnimationOnce()Z
    .locals 2

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    return v0
.end method

.method public blacklist getId()I
    .locals 1

    iget v0, p0, Landroid/view/InsetsSourceControl;->mId:I

    return v0
.end method

.method public blacklist getInsetsHint()Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getLeash()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getSurfacePosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 8

    iget v0, p0, Landroid/view/InsetsSourceControl;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget-object v6, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isControlledByPolicy()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mControlledByPolicy:Z

    return v0
.end method

.method public blacklist isInitiallyVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    return v0
.end method

.method public blacklist release(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public blacklist setInsetsHint(IIII)V
    .locals 1

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    return-void
.end method

.method public blacklist setInsetsHint(Landroid/graphics/Insets;)V
    .locals 0

    iput-object p1, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    return-void
.end method

.method public blacklist setParcelableFlags(I)V
    .locals 0

    iput p1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    return-void
.end method

.method public blacklist setSkipAnimationOnce(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    return-void
.end method

.method public blacklist setSurfacePosition(II)Z
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsSourceControl: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSourceControl;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, " initiallyVisible"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSurfacePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInsetsHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    if-eqz v1, :cond_1

    const-string v2, " skipAnimationOnce"

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/view/InsetsSourceControl;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iget v1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mControlledByPolicy:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
