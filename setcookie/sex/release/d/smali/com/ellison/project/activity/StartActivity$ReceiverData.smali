.class public Lcom/ellison/project/activity/StartActivity$ReceiverData;
.super Ljava/lang/Object;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ellison/project/activity/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceiverData"
.end annotation


# instance fields
.field public intentFilter:Landroid/content/IntentFilter;

.field public receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 0

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Lcom/ellison/project/activity/StartActivity$ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    .line 458
    iput-object p2, p0, Lcom/ellison/project/activity/StartActivity$ReceiverData;->intentFilter:Landroid/content/IntentFilter;

    return-void
.end method
