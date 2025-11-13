.class public final Lcom/android/internal/statusbar/RegisterStatusBarResult;
.super Ljava/lang/Object;
.source "RegisterStatusBarResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/statusbar/RegisterStatusBarResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist mAppearance:I

.field public final blacklist mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field public final blacklist mBehavior:I

.field public final blacklist mDisabledFlags1:I

.field public final blacklist mDisabledFlags2:I

.field public final blacklist mIcons:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mImeBackDisposition:I

.field public final blacklist mImeToken:Landroid/os/IBinder;

.field public final blacklist mImeWindowVis:I

.field public final blacklist mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

.field public final blacklist mNavbarColorManagedByIme:Z

.field public final blacklist mPackageName:Ljava/lang/String;

.field public final blacklist mRequestedVisibleTypes:I

.field public final blacklist mShowImeSwitcher:Z

.field public final blacklist mTransientBarTypes:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/statusbar/RegisterStatusBarResult$1;

    invoke-direct {v0}, Lcom/android/internal/statusbar/RegisterStatusBarResult$1;-><init>()V

    sput-object v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/ArrayMap;II[Lcom/android/internal/view/AppearanceRegion;IIZILandroid/os/IBinder;ZIILjava/lang/String;I[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;II[",
            "Lcom/android/internal/view/AppearanceRegion;",
            "IIZI",
            "Landroid/os/IBinder;",
            "ZII",
            "Ljava/lang/String;",
            "I[",
            "Lcom/android/internal/statusbar/LetterboxDetails;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v1, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    move/from16 v1, p2

    iput v1, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags1:I

    move/from16 v3, p3

    iput v3, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppearance:I

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    move/from16 v5, p5

    iput v5, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeWindowVis:I

    move/from16 v6, p6

    iput v6, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeBackDisposition:I

    move/from16 v7, p7

    iput-boolean v7, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mShowImeSwitcher:Z

    move/from16 v8, p8

    iput v8, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags2:I

    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeToken:Landroid/os/IBinder;

    move/from16 v10, p10

    iput-boolean v10, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mNavbarColorManagedByIme:Z

    move/from16 v11, p11

    iput v11, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mBehavior:I

    move/from16 v12, p12

    iput v12, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mRequestedVisibleTypes:I

    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mPackageName:Ljava/lang/String;

    move/from16 v14, p14

    iput v14, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mTransientBarTypes:I

    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArrayMap(Landroid/util/ArrayMap;I)V

    iget v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppearance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeWindowVis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeBackDisposition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mShowImeSwitcher:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-boolean v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mNavbarColorManagedByIme:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mBehavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mRequestedVisibleTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mTransientBarTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
