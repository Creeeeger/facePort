.class public Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
.super Landroid/app/ActionBar$Tab;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private greylist-max-r mCallback:Landroid/app/ActionBar$TabListener;

.field private blacklist mContentDesc:Ljava/lang/CharSequence;

.field private blacklist mCustomView:Landroid/view/View;

.field private blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mPosition:I

.field private blacklist mTag:Ljava/lang/Object;

.field private blacklist mText:Ljava/lang/CharSequence;

.field final synthetic blacklist this$0:Lcom/android/internal/app/WindowDecorActionBar;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/WindowDecorActionBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/app/ActionBar$Tab;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return-void
.end method


# virtual methods
.method public blacklist getCallback()Landroid/app/ActionBar$TabListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getPosition()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return v0
.end method

.method public whitelist getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist select()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    return-void
.end method

.method public whitelist setContentDescription(I)Landroid/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContext(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 2

    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmTabScrollView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public whitelist setCustomView(I)Landroid/app/ActionBar$Tab;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;
    .locals 2

    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmTabScrollView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public whitelist setIcon(I)Landroid/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContext(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
    .locals 2

    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmTabScrollView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public blacklist setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return-void
.end method

.method public whitelist setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    return-object p0
.end method

.method public whitelist setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist setText(I)Landroid/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContext(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 2

    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmTabScrollView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method
