.class public final Landroid/hardware/biometrics/PromptVerticalListContentView;
.super Ljava/lang/Object;
.source "PromptVerticalListContentView.java"

# interfaces
.implements Landroid/hardware/biometrics/PromptContentViewParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/PromptVerticalListContentView$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/PromptVerticalListContentView;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist MAX_DESCRIPTION_CHARACTER_NUMBER:I = 0xe1

.field static final blacklist MAX_EACH_ITEM_CHARACTER_NUMBER:I = 0x280

.field static final blacklist MAX_ITEM_NUMBER:I = 0x14


# instance fields
.field private final blacklist mContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/PromptContentItemParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDescription:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/biometrics/PromptVerticalListContentView$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/PromptVerticalListContentView$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/PromptVerticalListContentView;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/hardware/biometrics/PromptContentItemParcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/biometrics/PromptContentItemParcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView;->mContentList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView;->mDescription:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/biometrics/PromptVerticalListContentView-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/PromptVerticalListContentView;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/PromptContentItemParcelable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/PromptVerticalListContentView;->mContentList:Ljava/util/List;

    iput-object p2, p0, Landroid/hardware/biometrics/PromptVerticalListContentView;->mDescription:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Ljava/lang/String;Landroid/hardware/biometrics/PromptVerticalListContentView-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/biometrics/PromptVerticalListContentView;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static whitelist getMaxEachItemCharacterNumber()I
    .locals 1

    const/16 v0, 0x280

    return v0
.end method

.method public static whitelist getMaxItemCount()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getListItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/PromptContentItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/biometrics/PromptVerticalListContentView;->mContentList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView;->mContentList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/hardware/biometrics/PromptVerticalListContentView;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
