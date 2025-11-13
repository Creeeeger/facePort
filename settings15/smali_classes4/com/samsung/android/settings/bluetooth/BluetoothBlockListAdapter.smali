.class public final Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DBG:Z


# instance fields
.field public mBlockNumbersList:Ljava/util/List;

.field public mContext:Landroid/content/Context;

.field public mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->DBG:Z

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mBlockNumbersList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mBlockNumbersList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    new-instance p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mBlockNumbersList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;->name:Ljava/lang/String;

    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    const v4, 0x7f0d082b

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f0a0ffd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v2, 0x7f0a027d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    sget-boolean v2, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    const-string/jumbo v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SM-T97"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f08088d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f08088c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    iget-object v2, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v1, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v1, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p3, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "getView : %s"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothBlockListAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_5
    return-object p2
.end method

.method public final updateBlockDeviceList()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mBlockNumbersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_blocking_device"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "blocking_device_list"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/4 v7, 0x4

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    sget-boolean v4, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "addDevicePreferences for blocked device :: name="

    const-string v7, "BluetoothBlockListAdapter"

    invoke-static {v4, v6, v7}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothBlockListAdapter;->mBlockNumbersList:Ljava/util/List;

    new-instance v7, Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v5, v7, Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;->address:Ljava/lang/String;

    iput-object v6, v7, Lcom/samsung/android/settings/bluetooth/entity/BluetoothBlockDevice;->name:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
