.class Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$3;
.super Ljava/lang/Object;
.source "SmartPopupViewSettings.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;


# direct methods
.method public static synthetic $r8$lambda$IDQRrXV2YWV2lm7uGVI7lDdqIqU(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$3;Landroid/widget/CompoundButton;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$3;->lambda$onBindViewHolder$1(Landroid/widget/CompoundButton;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ShDb_EdYgTXZ2VsrO8G9iasAkTQ(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$3;Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$3;->lambda$onBindViewHolder$0(Ljava/lang/String;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$3;->this$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$3;->this$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;

    invoke-static {p0, p3, p1}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->-$$Nest$mswitchSmartPopupViewItem(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/widget/CompoundButton;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 298
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    .line 299
    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 300
    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$3;->this$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;

    invoke-static {p0, p3, p2}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->-$$Nest$mswitchSmartPopupViewItem(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 1

    .line 287
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object p2

    .line 288
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$3;->this$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->-$$Nest$fgetmEnabledPackageList(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 292
    new-instance v0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$3$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$3;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-eqz p2, :cond_0

    .line 297
    new-instance v0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$3$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$3$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$3;Landroid/widget/CompoundButton;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
