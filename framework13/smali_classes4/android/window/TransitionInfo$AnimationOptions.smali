.class public final Landroid/window/TransitionInfo$AnimationOptions;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimationOptions"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo$AnimationOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAnimations:I

.field private blacklist mBackgroundColor:I

.field private blacklist mEnterResId:I

.field private blacklist mExitResId:I

.field private blacklist mOverrideTaskTransition:Z

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mThumbnail:Landroid/hardware/HardwareBuffer;

.field private final blacklist mTransitionBounds:Landroid/graphics/Rect;

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 888
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$AnimationOptions$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo$AnimationOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    .line 766
    iput p1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    .line 767
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    .line 770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    .line 771
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    .line 772
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    .line 773
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mBackgroundColor:I

    .line 774
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    .line 775
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    .line 776
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 777
    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mThumbnail:Landroid/hardware/HardwareBuffer;

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    .line 779
    return-void
.end method

.method public static blacklist makeAnimOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;
    .locals 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 783
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 784
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    .line 785
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    .line 786
    return-object v0
.end method

.method public static blacklist makeClipRevealAnimOptions(IIII)Landroid/window/TransitionInfo$AnimationOptions;
    .locals 4
    .param p0, "startX"    # I
    .param p1, "startY"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 802
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 803
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iget-object v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    add-int v2, p0, p2

    add-int v3, p1, p3

    invoke-virtual {v1, p0, p1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 804
    return-object v0
.end method

.method public static blacklist makeCrossProfileAnimOptions()Landroid/window/TransitionInfo$AnimationOptions;
    .locals 2

    .line 824
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 825
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    return-object v0
.end method

.method public static blacklist makeCustomAnimOptions(Ljava/lang/String;IIIZ)Landroid/window/TransitionInfo$AnimationOptions;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "overrideTaskTransition"    # Z

    .line 791
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 792
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iput-object p0, v0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    .line 793
    iput p1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    .line 794
    iput p2, v0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    .line 795
    iput p3, v0, Landroid/window/TransitionInfo$AnimationOptions;->mBackgroundColor:I

    .line 796
    iput-boolean p4, v0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    .line 797
    return-object v0
.end method

.method public static blacklist makeCustomDisplayChangeAnimOptions(II)Landroid/window/TransitionInfo$AnimationOptions;
    .locals 2
    .param p0, "enterResId"    # I
    .param p1, "exitResId"    # I

    .line 831
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 832
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iput p0, v0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    .line 833
    iput p1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    .line 834
    return-object v0
.end method

.method public static blacklist makeScaleUpAnimOptions(IIII)Landroid/window/TransitionInfo$AnimationOptions;
    .locals 4
    .param p0, "startX"    # I
    .param p1, "startY"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 809
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 810
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iget-object v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    add-int v2, p0, p2

    add-int v3, p1, p3

    invoke-virtual {v1, p0, p1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 811
    return-object v0
.end method

.method public static blacklist makeThumbnailAnimOptions(Landroid/hardware/HardwareBuffer;IIZ)Landroid/window/TransitionInfo$AnimationOptions;
    .locals 2
    .param p0, "srcThumb"    # Landroid/hardware/HardwareBuffer;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "scaleUp"    # Z

    .line 816
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions;

    .line 817
    if-eqz p3, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-direct {v0, v1}, Landroid/window/TransitionInfo$AnimationOptions;-><init>(I)V

    .line 818
    .local v0, "options":Landroid/window/TransitionInfo$AnimationOptions;
    iget-object v1, v0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 819
    iput-object p0, v0, Landroid/window/TransitionInfo$AnimationOptions;->mThumbnail:Landroid/hardware/HardwareBuffer;

    .line 820
    return-object v0
.end method

.method private static blacklist typeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 909
    sparse-switch p0, :sswitch_data_0

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 915
    :sswitch_0
    const-string v0, "ANIM_OPEN_CROSS_PROFILE_APPS"

    return-object v0

    .line 911
    :sswitch_1
    const-string v0, "ANIM_CLIP_REVEAL"

    return-object v0

    .line 914
    :sswitch_2
    const-string v0, "ANIM_THUMBNAIL_SCALE_DOWN"

    return-object v0

    .line 913
    :sswitch_3
    const-string v0, "ANIM_THUMBNAIL_SCALE_UP"

    return-object v0

    .line 912
    :sswitch_4
    const-string v0, "ANIM_SCALE_UP"

    return-object v0

    .line 910
    :sswitch_5
    const-string v0, "ANIM_CUSTOM"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0xb -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 904
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAnimations()I
    .locals 1

    .line 871
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    return v0
.end method

.method public blacklist getBackgroundColor()I
    .locals 1

    .line 851
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mBackgroundColor:I

    return v0
.end method

.method public blacklist getEnterResId()I
    .locals 1

    .line 843
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    return v0
.end method

.method public blacklist getExitResId()I
    .locals 1

    .line 847
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    return v0
.end method

.method public blacklist getOverrideTaskTransition()Z
    .locals 1

    .line 855
    iget-boolean v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 859
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getThumbnail()Landroid/hardware/HardwareBuffer;
    .locals 1

    .line 867
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mThumbnail:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public blacklist getTransitionBounds()Landroid/graphics/Rect;
    .locals 1

    .line 863
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 839
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ AnimationOptions type= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    invoke-static {v1}, Landroid/window/TransitionInfo$AnimationOptions;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " override="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 876
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mEnterResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mExitResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    iget-boolean v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mOverrideTaskTransition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 881
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mTransitionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 883
    iget-object v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mThumbnail:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 884
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions;->mAnimations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    return-void
.end method
