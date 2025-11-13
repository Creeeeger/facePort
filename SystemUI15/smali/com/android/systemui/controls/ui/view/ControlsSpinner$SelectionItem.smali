.class public abstract Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appName:Ljava/lang/CharSequence;

.field public final componentName:Landroid/content/ComponentName;

.field public final icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->appName:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->componentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->appName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->componentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
