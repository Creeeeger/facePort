.class public final Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;


# static fields
.field public static final Companion:Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider$Companion;

.field public static volatile INSTANCE:Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->Companion:Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGestureHintDrawable(Landroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconResource;I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;
    .locals 3

    sget-object p0, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;->Companion:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable$Companion;

    iget-object v0, p2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    if-eq v2, v1, :cond_2

    :cond_0
    if-eq p3, v1, :cond_1

    const/4 v2, 0x3

    if-ne p3, v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0, p3}, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable$Companion;->rotateDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable$Companion;->rotateDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_2
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, p3, p0

    aput-object p2, p3, v1

    invoke-direct {p1, p3}, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    new-array p2, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v0, p2, p0

    invoke-direct {p1, p2}, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object p1
.end method
