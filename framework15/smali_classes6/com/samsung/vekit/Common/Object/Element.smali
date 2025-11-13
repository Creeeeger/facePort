.class public Lcom/samsung/vekit/Common/Object/Element;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field protected blacklist TAG:Ljava/lang/String;

.field protected blacklist context:Lcom/samsung/vekit/Common/VEContext;

.field protected blacklist elementType:Lcom/samsung/vekit/Common/Type/ElementType;

.field protected blacklist id:I

.field protected blacklist name:Ljava/lang/String;


# direct methods
.method protected constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Element;->context:Lcom/samsung/vekit/Common/VEContext;

    iput-object p2, p0, Lcom/samsung/vekit/Common/Object/Element;->elementType:Lcom/samsung/vekit/Common/Type/ElementType;

    iput p3, p0, Lcom/samsung/vekit/Common/Object/Element;->id:I

    iput-object p4, p0, Lcom/samsung/vekit/Common/Object/Element;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Element;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getContext()Lcom/samsung/vekit/Common/VEContext;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Element;->context:Lcom/samsung/vekit/Common/VEContext;

    return-object v0
.end method

.method public blacklist getElementType()Lcom/samsung/vekit/Common/Type/ElementType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Element;->elementType:Lcom/samsung/vekit/Common/Type/ElementType;

    return-object v0
.end method

.method public blacklist getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/Element;->id:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Element;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPanel()Lcom/samsung/vekit/Panel/Panel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setOpacity(F)Lcom/samsung/vekit/Common/Object/Element;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist update()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Element;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->update(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void
.end method
