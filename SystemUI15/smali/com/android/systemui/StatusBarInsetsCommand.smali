.class public final Lcom/android/systemui/StatusBarInsetsCommand;
.super Lcom/android/systemui/statusbar/commandline/ParseableCommand;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final bottomMargin$delegate:Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

.field public final callback:Lcom/android/systemui/StatusBarInsetsCommand$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v1, "getBottomMargin()Lcom/android/systemui/BottomMarginCommand;"

    const/4 v2, 0x0

    const-class v3, Lcom/android/systemui/StatusBarInsetsCommand;

    const-string v4, "bottomMargin"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/StatusBarInsetsCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/android/systemui/StatusBarInsetsCommand$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/StatusBarInsetsCommand$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/StatusBarInsetsCommand$Callback;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string/jumbo v2, "status-bar-insets"

    invoke-direct {p0, v2, v0, v1, v0}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/StatusBarInsetsCommand;->callback:Lcom/android/systemui/StatusBarInsetsCommand$Callback;

    new-instance p1, Lcom/android/systemui/BottomMarginCommand;

    invoke-direct {p1}, Lcom/android/systemui/BottomMarginCommand;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->subCommand(Lcom/android/systemui/statusbar/commandline/ParseableCommand;)Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/StatusBarInsetsCommand;->bottomMargin$delegate:Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/io/PrintWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/StatusBarInsetsCommand;->callback:Lcom/android/systemui/StatusBarInsetsCommand$Callback;

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$1$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$1$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/StatusBarInsetsCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object p0, p0, Lcom/android/systemui/StatusBarInsetsCommand;->bottomMargin$delegate:Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->isPresent:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->cmd:Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Lcom/android/systemui/BottomMarginCommand;

    if-eqz p0, :cond_3

    sget-object v1, Lcom/android/systemui/BottomMarginCommand;->ROTATION_DEGREES_TO_VALUE_MAPPING:Ljava/util/Map;

    sget-object v3, Lcom/android/systemui/BottomMarginCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v2, v3, v2

    iget-object v2, p0, Lcom/android/systemui/BottomMarginCommand;->rotationDegrees$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    sget-object p0, Lcom/android/systemui/BottomMarginCommand;->Companion:Lcom/android/systemui/BottomMarginCommand$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/BottomMarginCommand;->ROTATION_DEGREES_OPTIONS:Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rotation should be one of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    aget-object v2, v3, v2

    iget-object p0, p0, Lcom/android/systemui/BottomMarginCommand;->marginBottomDp$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_2

    const-string p0, "Margin bottom not set."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->marginBottomOverrides:Ljava/util/Map;

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->notifyInsetsChanged()V

    :cond_3
    :goto_1
    return-void
.end method
