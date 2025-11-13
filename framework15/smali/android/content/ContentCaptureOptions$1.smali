.class Landroid/content/ContentCaptureOptions$1;
.super Ljava/lang/Object;
.source "ContentCaptureOptions.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentCaptureOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/ContentCaptureOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentCaptureOptions;
    .locals 21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/ContentCaptureOptions;

    invoke-direct {v1, v11}, Landroid/content/ContentCaptureOptions;-><init>(I)V

    return-object v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    nop

    invoke-static/range {p1 .. p1}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->-$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    move-result-object v18

    nop

    const/4 v1, 0x0

    move-object/from16 v10, p1

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v19

    new-instance v20, Landroid/content/ContentCaptureOptions;

    move-object/from16 v1, v20

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    invoke-direct/range {v1 .. v10}, Landroid/content/ContentCaptureOptions;-><init>(IIIIIZZLandroid/content/ContentCaptureOptions$ContentProtectionOptions;Landroid/util/ArraySet;)V

    return-object v20
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/ContentCaptureOptions$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentCaptureOptions;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/ContentCaptureOptions;
    .locals 1

    new-array v0, p1, [Landroid/content/ContentCaptureOptions;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/ContentCaptureOptions$1;->newArray(I)[Landroid/content/ContentCaptureOptions;

    move-result-object p1

    return-object p1
.end method
