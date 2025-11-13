.class public final Landroid/content/pm/PackageManager$Property;
.super Ljava/lang/Object;
.source "PackageManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TYPE_BOOLEAN:I = 0x1

.field private static final blacklist TYPE_FLOAT:I = 0x2

.field private static final blacklist TYPE_INTEGER:I = 0x3

.field private static final blacklist TYPE_RESOURCE:I = 0x4

.field private static final blacklist TYPE_STRING:I = 0x5


# instance fields
.field private blacklist mBooleanValue:Z

.field private final blacklist mClassName:Ljava/lang/String;

.field private blacklist mFloatValue:F

.field private blacklist mIntegerValue:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mStringValue:Ljava/lang/String;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 185
    const-class v0, Landroid/content/pm/PackageManager;

    .line 389
    new-instance v0, Landroid/content/pm/PackageManager$Property$1;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$Property$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageManager$Property;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .line 221
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 222
    iput p2, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    .line 223
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    nop

    .line 205
    nop

    .line 206
    nop

    .line 207
    iput-object p1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    .line 208
    iput p2, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    .line 209
    iput-object p3, p0, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    .line 210
    iput-object p4, p0, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "isResource"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;

    .line 227
    if-eqz p3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    invoke-direct {p0, p1, v0, p4, p5}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 228
    iput p2, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    .line 229
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .line 233
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 234
    iput-object p2, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .line 215
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    iput-boolean p2, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    .line 217
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBoolean()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    return v0
.end method

.method public whitelist getClassName()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFloat()F
    .locals 1

    .line 286
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    return v0
.end method

.method public whitelist getInteger()I
    .locals 2

    .line 301
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResourceId()I
    .locals 2

    .line 316
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getString()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 240
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    return v0
.end method

.method public whitelist isBoolean()Z
    .locals 2

    .line 278
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isFloat()Z
    .locals 2

    .line 293
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isInteger()Z
    .locals 2

    .line 308
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isResourceId()Z
    .locals 2

    .line 323
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isString()Z
    .locals 2

    .line 338
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "outBundle"    # Landroid/os/Bundle;

    .line 348
    if-eqz p1, :cond_1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    move-object v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v0, "b":Landroid/os/Bundle;
    :goto_1
    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 351
    iget-object v1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 352
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 353
    iget-object v1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_2

    .line 354
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 355
    iget-object v1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 356
    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 357
    iget-object v1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 358
    :cond_5
    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 359
    iget-object v1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_6
    :goto_2
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 371
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 376
    iget-boolean v0, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 377
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 378
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 379
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 380
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 381
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 382
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 383
    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 384
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    :cond_4
    :goto_0
    return-void
.end method
