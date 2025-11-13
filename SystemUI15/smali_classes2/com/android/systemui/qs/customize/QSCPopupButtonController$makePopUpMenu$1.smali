.class public final Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $adapter:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;

.field public final synthetic $anchor:Landroid/view/View;

.field public final synthetic $type:Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

.field public final synthetic this$0:Lcom/android/systemui/qs/customize/QSCPopupButtonController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/QSCPopupButtonController;Landroid/view/View;Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1;->this$0:Lcom/android/systemui/qs/customize/QSCPopupButtonController;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1;->$anchor:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1;->$adapter:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1;->$type:Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    new-instance p1, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1;->this$0:Lcom/android/systemui/qs/customize/QSCPopupButtonController;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1;->$anchor:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1;->this$0:Lcom/android/systemui/qs/customize/QSCPopupButtonController;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1;->$adapter:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1;->$type:Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    const/4 p0, -0x2

    invoke-virtual {p1, p0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    invoke-virtual {p1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iput-object p1, v3, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->qsBlurPopUpMenu:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;

    const p0, 0x800003

    invoke-virtual {p1, p0}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1$1$1;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1$1$1;-><init>(Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;Landroid/view/View;Lcom/android/systemui/qs/customize/QSCPopupButtonController;Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;)V

    invoke-virtual {p1, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;->show()V

    return-void
.end method
