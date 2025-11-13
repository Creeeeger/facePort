.class public final Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$2;->this$0:Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Landroidx/picker/model/AppInfo;)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mBlockList:Ljava/util/List;

    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$2;->this$0:Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a104b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    const v0, 0x7f0a0f81

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isTmobileConcept()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    const v1, 0x7f0f001c

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/PopupMenu;->inflate(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    const v1, 0x7f0f001b

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/PopupMenu;->inflate(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    iget-object v0, v0, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget v1, p2, Landroidx/picker/model/AppInfo;->user:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->findSelectItem(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;->mPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    new-instance v2, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings$3;-><init>(Lcom/samsung/android/settings/datausage/SecAllowedNetworksSettings;Landroidx/picker/model/AppInfo;Landroidx/appcompat/widget/AppCompatTextView;)V

    iput-object v2, v0, Landroidx/appcompat/widget/PopupMenu;->mMenuItemClickListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return v1
.end method
