.class Lcom/android/settings/datausage/CellDataPreference$Listener;
.super Ljava/lang/Object;
.source "CellDataPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/CellDataPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/CellDataPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/datausage/CellDataPreference;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$Listener;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/datausage/CellDataPreference;Lcom/android/settings/datausage/CellDataPreference$Listener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference$Listener;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference$Listener;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/datausage/CellDataPreference;->performClick(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference$Listener;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/CellDataPreference;->-$$Nest$fgetmSupportEnableDialog(Lcom/android/settings/datausage/CellDataPreference;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/datausage/CellDataPreference$Listener;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-static {p0}, Lcom/android/settings/datausage/CellDataPreference;->-$$Nest$fgetmSupportDisableDialog(Lcom/android/settings/datausage/CellDataPreference;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    xor-int/lit8 p0, p2, 0x1

    .line 115
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    return-void
.end method
