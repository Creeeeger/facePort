.class public Lcom/samsung/systemui/splugins/navigationbar/IconResource;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDarkDrawable:Landroid/graphics/drawable/Drawable;

.field public mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public mLightDrawable:Landroid/graphics/drawable/Drawable;

.field public mNeedRtlCheck:Z


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    iput-object p2, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean p4, p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mNeedRtlCheck:Z

    return-void
.end method
