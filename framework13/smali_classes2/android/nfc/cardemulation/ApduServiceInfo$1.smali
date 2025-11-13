.class Landroid/nfc/cardemulation/ApduServiceInfo$1;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nfc/cardemulation/ApduServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 29
    .param p1, "source"    # Landroid/os/Parcel;

    .line 774
    move-object/from16 v0, p1

    sget-object v1, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 775
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 776
    .local v18, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v5

    .line 777
    .local v4, "onHost":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 778
    .local v19, "offHostName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 779
    .local v20, "staticOffHostName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v2

    .line 780
    .local v14, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 781
    .local v21, "numStaticGroups":I
    if-lez v21, :cond_1

    .line 782
    sget-object v2, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v14, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 784
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v2

    .line 785
    .local v13, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 786
    .local v22, "numDynamicGroups":I
    if-lez v22, :cond_2

    .line 787
    sget-object v2, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v13, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 789
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v8, v3

    goto :goto_1

    :cond_3
    move v8, v5

    .line 790
    .local v8, "requiresUnlock":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v9, v3

    goto :goto_2

    :cond_4
    move v9, v5

    .line 791
    .local v9, "requiresScreenOn":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 792
    .local v23, "bannerResource":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 793
    .local v24, "uid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 795
    .local v25, "settingsActivityName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move v15, v3

    goto :goto_3

    :cond_5
    move v15, v5

    .line 796
    .local v15, "isSelected":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    move/from16 v16, v3

    goto :goto_4

    :cond_6
    move/from16 v16, v5

    .line 797
    .local v16, "aidBased":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    move/from16 v17, v3

    goto :goto_5

    :cond_7
    move/from16 v17, v5

    .line 799
    .local v17, "samsungExt":Z
    :goto_5
    new-instance v26, Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object/from16 v2, v26

    move-object v3, v1

    move-object/from16 v5, v18

    move-object v6, v14

    move-object v7, v13

    move/from16 v10, v23

    move/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v27, v13

    .end local v13    # "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local v27, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object/from16 v13, v19

    move-object/from16 v28, v14

    .end local v14    # "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local v28, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object/from16 v14, v20

    invoke-direct/range {v2 .. v17}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v26
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 771
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 1
    .param p1, "size"    # I

    .line 807
    new-array v0, p1, [Landroid/nfc/cardemulation/ApduServiceInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 771
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object p1

    return-object p1
.end method
