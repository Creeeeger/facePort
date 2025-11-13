.class public Landroid/ddm/DdmRegister;
.super Ljava/lang/Object;
.source "DdmRegister.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o registerHandlers()V
    .locals 0

    invoke-static {}, Landroid/ddm/DdmHandleHello;->register()V

    invoke-static {}, Landroid/ddm/DdmHandleHeap;->register()V

    invoke-static {}, Landroid/ddm/DdmHandleNativeHeap;->register()V

    invoke-static {}, Landroid/ddm/DdmHandleProfiling;->register()V

    invoke-static {}, Landroid/ddm/DdmHandleExit;->register()V

    invoke-static {}, Landroid/ddm/DdmHandleViewDebug;->register()V

    invoke-static {}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registrationComplete()V

    return-void
.end method
