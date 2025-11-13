.class Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "AABluetoothListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter$OnItemClickListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private expandableListDetail:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;>;"
        }
    .end annotation
.end field

.field private expandableListTitle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->expandableListTitle:Ljava/util/List;

    .line 47
    iput-object p3, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->expandableListDetail:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->expandableListDetail:Ljava/util/LinkedHashMap;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->expandableListTitle:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 55
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p0, p2

    return-wide p0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 71
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getChildView() : listPosition "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , expandedListPosition "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "AABluetoothListAdapter"

    invoke-static {v0, p5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/bluetooth/BluetoothDevice;

    if-nez p4, :cond_0

    .line 74
    iget-object p4, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 75
    invoke-virtual {p4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/LayoutInflater;

    .line 76
    sget v1, Lcom/android/settings/R$layout;->aa_pref_item_layout:I

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->sec_bluetooth_listview_background:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    const/16 v3, 0xf

    .line 82
    invoke-virtual {p4, v3}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 83
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p4, v3, v4}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    .line 85
    invoke-virtual {p4, v3}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 86
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p4, v3, v4}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 89
    invoke-virtual {p4, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 90
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p4, v1, v3}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p4, v2}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 97
    :goto_0
    sget v3, Lcom/android/settings/R$id;->expandedListItem:I

    .line 98
    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 99
    invoke-virtual {p5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getChildView expandedBTDevice.getName() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const-string v4, "device has no name, set adress"

    .line 103
    invoke-static {v0, v4}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_1
    sget v0, Lcom/android/settings/R$id;->car_icon:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 108
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 109
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    sget v0, Lcom/android/settings/R$id;->summary:I

    .line 112
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->context:Landroid/content/Context;

    invoke-static {v3, p5}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothUtils;->getConnectedStatusForSummary(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    if-nez v4, :cond_5

    .line 115
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 118
    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :goto_2
    sget v0, Lcom/android/settings/R$id;->layout_details:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 124
    invoke-virtual {p5}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    if-ne v3, v1, :cond_6

    .line 125
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    sget v0, Lcom/android/settings/R$id;->deviceDetails:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 127
    new-instance v1, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter$OnItemClickListener;

    invoke-direct {v1, p0, p1, p2, p5}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter$OnItemClickListener;-><init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;IILandroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 132
    :cond_6
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    :goto_3
    sget p0, Lcom/android/settings/R$id;->divider:I

    invoke-virtual {p4, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_8

    if-eqz p3, :cond_7

    .line 138
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 140
    :cond_7
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_4
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->expandableListDetail:Ljava/util/LinkedHashMap;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->expandableListTitle:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 150
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->expandableListTitle:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getGroupCount()I
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->expandableListTitle:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getGroupId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 171
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 p4, 0x0

    if-nez p3, :cond_0

    .line 173
    iget-object p3, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 174
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 175
    sget v0, Lcom/android/settings/R$layout;->aa_pref_group_layout:I

    invoke-virtual {p3, v0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 177
    :cond_0
    sget v0, Lcom/android/settings/R$id;->listTitle:I

    .line 178
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 179
    invoke-virtual {v0, p4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 180
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->getChildrenCount(I)I

    move-result p2

    const/4 p4, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->expandableListTitle:Ljava/util/List;

    .line 184
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "Paired devices"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 185
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :goto_0
    invoke-virtual {p3, p4}, Landroid/view/View;->setClickable(Z)V

    .line 191
    invoke-virtual {p3, p4}, Landroid/view/View;->setFocusable(Z)V

    .line 192
    invoke-virtual {p3, p4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 193
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter$1;-><init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p3
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 65
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setData(Ljava/util/List;Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;>;)V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->expandableListTitle:Ljava/util/List;

    .line 217
    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->expandableListDetail:Ljava/util/LinkedHashMap;

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method updateSummary(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSummary for cached device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AABluetoothListAdapter"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->notifyDataSetChanged()V

    return-void
.end method
