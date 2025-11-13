.class public final Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic $adapter:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;

.field public final synthetic $anchor:Landroid/view/View;

.field public final synthetic $this_apply:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;

.field public final synthetic $type:Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

.field public final synthetic this$0:Lcom/android/systemui/qs/customize/QSCPopupButtonController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;Landroid/view/View;Lcom/android/systemui/qs/customize/QSCPopupButtonController;Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1$1$1;->$adapter:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1$1$1;->$anchor:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1$1$1;->this$0:Lcom/android/systemui/qs/customize/QSCPopupButtonController;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1$1$1;->$type:Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    iput-object p5, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1$1$1;->$this_apply:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1$1$1;->$adapter:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p1

    const/4 p2, 0x0

    move p4, p2

    :goto_0
    if-ge p4, p1, :cond_0

    iget-object p5, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1$1$1;->$adapter:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;

    invoke-virtual {p5, p4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p5

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p5, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopUpContent;

    iput-boolean p2, p5, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopUpContent;->checked:Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1$1$1;->$adapter:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopUpContent;

    const/4 p4, 0x1

    iput-boolean p4, p1, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopUpContent;->checked:Z

    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1$1$1;->$anchor:Landroid/view/View;

    iget-object p5, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1$1$1;->$type:Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    const v0, 0x7f0a0233

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p3, :cond_2

    invoke-static {}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->values()[Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget-object p5, v1, p5

    invoke-virtual {p5}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->getFirst()I

    move-result p5

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->values()[Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget-object p5, v1, p5

    invoke-virtual {p5}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->getSecond()I

    move-result p5

    :goto_1
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1$1$1;->this$0:Lcom/android/systemui/qs/customize/QSCPopupButtonController;

    iget-object p5, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1$1$1;->$type:Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    if-nez p3, :cond_3

    move p2, p4

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->$ENTRIES:Lkotlin/enums/EnumEntries;

    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    sget-object p5, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->MULTISIM:Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    if-eq p3, p5, :cond_4

    sget-object p5, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->HIDE_SMART_VIEW_LARGE_TILE:Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    if-ne p3, p5, :cond_5

    :cond_4
    iput-boolean p4, p1, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->barChanged:Z

    :cond_5
    iget-object p4, p1, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->tunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    invoke-virtual {p3, p2, p4, p1}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->updateValue(ZLcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/customize/SecQSSettingEditResources;)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1$1$1;->$this_apply:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void
.end method
