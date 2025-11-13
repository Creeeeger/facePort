.class public Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
.super Ljava/lang/Object;
.source "CocktailBarStateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_CHANGE_ACTIVATE:I = 0x40

.field public static final blacklist FLAG_CHANGE_LOCK_STATE:I = 0x8

.field public static final blacklist FLAG_CHANGE_MODE:I = 0x10

.field public static final blacklist FLAG_CHANGE_POSITION:I = 0x4

.field public static final blacklist FLAG_CHANGE_SHOW_TIMEOUT:I = 0x20

.field public static final blacklist FLAG_CHANGE_VISIBILITY:I = 0x1

.field public static final blacklist FLAG_CHANGE_WINDOW_TYPE:I = 0x80

.field public static final blacklist LOCK_STATE_HIDE:I = 0x2

.field public static final blacklist LOCK_STATE_NONE:I = 0x0

.field public static final blacklist LOCK_STATE_RESTRICT:I = 0x4

.field public static final blacklist LOCK_STATE_SHOW:I = 0x1

.field public static final blacklist MODE_IMMERSIVE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist MODE_MULTITASKING:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist MODE_UNKNOWN:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist POSITION_BOTTOM:I = 0x4

.field public static final blacklist POSITION_LEFT:I = 0x1

.field public static final blacklist POSITION_RIGHT:I = 0x2

.field public static final blacklist POSITION_TOP:I = 0x3

.field public static final blacklist POSITION_UNKNOWN:I = 0x0

.field public static final blacklist STATE_INVISIBLE:I = 0x2

.field public static final blacklist STATE_VISIBLE:I = 0x1

.field public static final blacklist WINDOW_TYPE_FULLSCREEN:I = 0x2

.field public static final blacklist WINDOW_TYPE_MINIMIZE:I = 0x1

.field public static final blacklist WINDOW_TYPE_UNKNOWN:I


# instance fields
.field public blacklist activate:Z

.field public blacklist changeFlag:I

.field public blacklist lockState:I

.field public blacklist mode:I

.field public blacklist position:I

.field public blacklist showTimeout:I

.field public blacklist visibility:I

.field public blacklist windowType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 345
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 229
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 238
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 245
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 252
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 259
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .line 266
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 274
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 275
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 229
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 238
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 245
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 252
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 259
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .line 266
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 305
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .locals 2
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 229
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 238
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 245
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 252
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 259
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .line 266
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 283
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 284
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    .line 285
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 286
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 287
    iget-boolean v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 288
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .line 289
    return-void
.end method


# virtual methods
.method public blacklist clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .locals 2

    .line 312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 313
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 314
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 315
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(Landroid/os/Parcel;)V

    .line 316
    .local v1, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    return-object v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 332
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    return-void
.end method
