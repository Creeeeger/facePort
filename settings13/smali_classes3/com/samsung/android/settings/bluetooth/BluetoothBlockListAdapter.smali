.class public Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BluetoothBlockListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mBlockNumbersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public static synthetic $r8$lambda$5pt-0_0Nt4v_Acxm0XDhHo50ZdY(Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->lambda$getView$0(Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;ILandroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mBlockNumbersList:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->updateBlockDeviceList()V

    return-void
.end method

.method private clickDeleteButton(Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;ILandroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    iget-object v3, v1, Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;->address:Ljava/lang/String;

    .line 122
    iget-object v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "bluetooth_blocking_device"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "blocking_device_list"

    const-string v8, ""

    .line 123
    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    return-void

    :cond_0
    const-string v8, ";"

    .line 126
    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 130
    array-length v9, v4

    move v10, v6

    :goto_0
    if-ge v10, v9, :cond_4

    aget-object v11, v4, v10

    const-string v12, ","

    .line 131
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 132
    array-length v13, v11

    const/4 v14, 0x5

    if-eq v13, v14, :cond_1

    :catch_0
    move-object/from16 v16, v4

    goto :goto_1

    .line 133
    :cond_1
    aget-object v13, v11, v6

    const/4 v14, 0x1

    .line 134
    aget-object v14, v11, v14

    const/4 v15, 0x2

    .line 137
    :try_start_0
    aget-object v16, v11, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v16, 0x3

    .line 138
    aget-object v16, v11, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x4

    .line 139
    aget-object v11, v11, v16

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v4

    const/4 v4, 0x2

    if-le v11, v4, :cond_2

    goto :goto_1

    .line 145
    :cond_2
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v16

    const/4 v6, 0x0

    goto :goto_0

    .line 150
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    iget-object v3, v0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 152
    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mBlockNumbersList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$getView$0(Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;ILandroid/view/View;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->clickDeleteButton(Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mBlockNumbersList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mBlockNumbersList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 74
    new-instance p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder-IA;)V

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mBlockNumbersList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;

    if-eqz v1, :cond_4

    if-eqz p2, :cond_1

    .line 80
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;

    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/android/settings/R$layout;->sec_bluetooth_block_device_item:I

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 83
    sget v0, Lcom/android/settings/R$id;->text_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/android/settings/R$id;->btn_delete:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    :goto_1
    invoke-static {}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isGreenishModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->sec_bluetooth_listview_background2:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->sec_bluetooth_listview_background:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :goto_2
    iget-object v0, v1, Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 102
    :cond_3
    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_3
    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 106
    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 107
    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 109
    iget-object v0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getView : %s"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothBlockListAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    return-object p2
.end method

.method public updateBlockDeviceList()V
    .locals 8

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mBlockNumbersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_blocking_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "blocking_device_list"

    const-string v3, ""

    .line 163
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ";"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    const-string v5, ","

    .line 167
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 168
    array-length v5, v4

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    aget-object v5, v4, v2

    const/4 v6, 0x1

    .line 170
    aget-object v6, v4, v6

    const/4 v7, 0x4

    .line 171
    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    .line 174
    sget-boolean v4, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addDevicePreferences for blocked device :: name="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "BluetoothBlockListAdapter"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mBlockNumbersList:Ljava/util/List;

    new-instance v7, Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;

    invoke-direct {v7, v5, v6}, Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
