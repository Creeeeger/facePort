.class public final Lcom/android/systemui/accessibility/hearingaid/ToolItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final toolIcon:Landroid/graphics/drawable/Drawable;

.field public final toolIntent:Landroid/content/Intent;

.field public final toolName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolIcon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolIntent:Landroid/content/Intent;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const-string p1, ""

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/accessibility/hearingaid/ToolItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/accessibility/hearingaid/ToolItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/accessibility/hearingaid/ToolItem;

    iget-object v1, p1, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolName:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolIntent:Landroid/content/Intent;

    iget-object p1, p1, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolIntent:Landroid/content/Intent;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolIntent:Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ToolItem(toolName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/ToolItem;->toolName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", toolIcon="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", toolIntent="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
