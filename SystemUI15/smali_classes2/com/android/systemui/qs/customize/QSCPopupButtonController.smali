.class public final Lcom/android/systemui/qs/customize/QSCPopupButtonController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public barChanged:Z

.field public final children:Ljava/util/ArrayList;

.field public container:Landroid/widget/LinearLayout;

.field public final context:Landroid/content/Context;

.field public final editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

.field public qsBlurPopUpMenu:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;

.field public final tunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/customize/SecQSSettingEditResources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->tunerService:Lcom/android/systemui/tuner/TunerService;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    new-instance p1, Ljava/util/ArrayList;

    sget-object p2, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->$ENTRIES:Lkotlin/enums/EnumEntries;

    check-cast p2, Lkotlin/collections/AbstractCollection;

    invoke-virtual {p2}, Lkotlin/collections/AbstractCollection;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->children:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final isAvailableMenu(I)Z
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->$ENTRIES:Lkotlin/enums/EnumEntries;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    sget-object v0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->MULTISIM:Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->tunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->isAvailable(Lcom/android/systemui/tuner/TunerService;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->isAvailable(Lcom/android/systemui/tuner/TunerService;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final setPopupText(Landroid/view/View;Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;)V
    .locals 7

    const v0, 0x7f0a0235

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->getTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f0a0233

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->tunerService:Lcom/android/systemui/tuner/TunerService;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sget-object v4, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->$ENTRIES:Lkotlin/enums/EnumEntries;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->getSelectedIdx(Lcom/android/systemui/tuner/TunerService;)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->getFirst()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->getSecond()I

    move-result v3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    new-instance v0, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {v0}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->$ENTRIES:Lkotlin/enums/EnumEntries;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->getSelectedIdx(Lcom/android/systemui/tuner/TunerService;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    new-instance v4, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopUpContent;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->context:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->getFirst()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopUpContent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopUpContent;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->context:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;->getSecond()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    xor-int/2addr v1, v2

    invoke-direct {v4, v3, v1}, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopUpContent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v0, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/systemui/qs/customize/QSCPopupButtonController$makePopUpMenu$1;-><init>(Lcom/android/systemui/qs/customize/QSCPopupButtonController;Landroid/view/View;Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$PopupListAdapter;Lcom/android/systemui/qs/customize/QSCPopupButtonController$POPUPTYPE;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
